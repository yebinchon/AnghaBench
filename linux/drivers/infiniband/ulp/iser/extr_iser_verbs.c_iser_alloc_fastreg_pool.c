
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_fr_pool {scalar_t__ size; int all_list; int list; int lock; } ;
struct iser_fr_desc {int all_list; int list; } ;
struct iser_device {int pd; } ;
struct ib_conn {int pi_support; struct iser_fr_pool fr_pool; struct iser_device* device; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct iser_fr_desc*) ;
 int PTR_ERR (struct iser_fr_desc*) ;
 struct iser_fr_desc* iser_create_fastreg_desc (struct iser_device*,int ,int ,unsigned int) ;
 int iser_free_fastreg_pool (struct ib_conn*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;

int iser_alloc_fastreg_pool(struct ib_conn *ib_conn,
       unsigned cmds_max,
       unsigned int size)
{
 struct iser_device *device = ib_conn->device;
 struct iser_fr_pool *fr_pool = &ib_conn->fr_pool;
 struct iser_fr_desc *desc;
 int i, ret;

 INIT_LIST_HEAD(&fr_pool->list);
 INIT_LIST_HEAD(&fr_pool->all_list);
 spin_lock_init(&fr_pool->lock);
 fr_pool->size = 0;
 for (i = 0; i < cmds_max; i++) {
  desc = iser_create_fastreg_desc(device, device->pd,
      ib_conn->pi_support, size);
  if (IS_ERR(desc)) {
   ret = PTR_ERR(desc);
   goto err;
  }

  list_add_tail(&desc->list, &fr_pool->list);
  list_add_tail(&desc->all_list, &fr_pool->all_list);
  fr_pool->size++;
 }

 return 0;

err:
 iser_free_fastreg_pool(ib_conn);
 return ret;
}
