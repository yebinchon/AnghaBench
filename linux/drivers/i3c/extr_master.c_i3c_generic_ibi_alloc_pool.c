
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_ibi_setup {unsigned int num_slots; int max_payload_len; } ;
struct TYPE_2__ {void* data; } ;
struct i3c_generic_ibi_slot {int node; TYPE_1__ base; } ;
struct i3c_generic_ibi_pool {int num_slots; int free_slots; void* payload_buf; struct i3c_generic_ibi_slot* slots; int pending; int lock; } ;
struct i3c_dev_desc {int dummy; } ;


 int ENOMEM ;
 struct i3c_generic_ibi_pool* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int i3c_generic_ibi_free_pool (struct i3c_generic_ibi_pool*) ;
 int i3c_master_init_ibi_slot (struct i3c_dev_desc*,TYPE_1__*) ;
 void* kcalloc (unsigned int,int,int ) ;
 struct i3c_generic_ibi_pool* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;

struct i3c_generic_ibi_pool *
i3c_generic_ibi_alloc_pool(struct i3c_dev_desc *dev,
      const struct i3c_ibi_setup *req)
{
 struct i3c_generic_ibi_pool *pool;
 struct i3c_generic_ibi_slot *slot;
 unsigned int i;
 int ret;

 pool = kzalloc(sizeof(*pool), GFP_KERNEL);
 if (!pool)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&pool->lock);
 INIT_LIST_HEAD(&pool->free_slots);
 INIT_LIST_HEAD(&pool->pending);

 pool->slots = kcalloc(req->num_slots, sizeof(*slot), GFP_KERNEL);
 if (!pool->slots) {
  ret = -ENOMEM;
  goto err_free_pool;
 }

 if (req->max_payload_len) {
  pool->payload_buf = kcalloc(req->num_slots,
         req->max_payload_len, GFP_KERNEL);
  if (!pool->payload_buf) {
   ret = -ENOMEM;
   goto err_free_pool;
  }
 }

 for (i = 0; i < req->num_slots; i++) {
  slot = &pool->slots[i];
  i3c_master_init_ibi_slot(dev, &slot->base);

  if (req->max_payload_len)
   slot->base.data = pool->payload_buf +
       (i * req->max_payload_len);

  list_add_tail(&slot->node, &pool->free_slots);
  pool->num_slots++;
 }

 return pool;

err_free_pool:
 i3c_generic_ibi_free_pool(pool);
 return ERR_PTR(ret);
}
