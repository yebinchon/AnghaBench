
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_pool {int type; unsigned int max_elem; int flags; int state; int key_size; int key_offset; int pool_lock; int ref_cnt; int num_elem; int cleanup; int tree; int elem_size; struct rxe_dev* rxe; } ;
struct rxe_dev {int dummy; } ;
typedef enum rxe_elem_type { ____Placeholder_rxe_elem_type } rxe_elem_type ;
struct TYPE_2__ {size_t size; int flags; int key_size; int key_offset; int min_index; int max_index; int cleanup; } ;


 int ALIGN (size_t,int ) ;
 int RB_ROOT ;
 int RXE_POOL_ALIGN ;
 int RXE_POOL_INDEX ;
 int RXE_POOL_KEY ;
 int RXE_POOL_STATE_VALID ;
 int atomic_set (int *,int ) ;
 int kref_init (int *) ;
 int memset (struct rxe_pool*,int ,int) ;
 int rwlock_init (int *) ;
 int rxe_pool_init_index (struct rxe_pool*,int ,int ) ;
 TYPE_1__* rxe_type_info ;

int rxe_pool_init(
 struct rxe_dev *rxe,
 struct rxe_pool *pool,
 enum rxe_elem_type type,
 unsigned int max_elem)
{
 int err = 0;
 size_t size = rxe_type_info[type].size;

 memset(pool, 0, sizeof(*pool));

 pool->rxe = rxe;
 pool->type = type;
 pool->max_elem = max_elem;
 pool->elem_size = ALIGN(size, RXE_POOL_ALIGN);
 pool->flags = rxe_type_info[type].flags;
 pool->tree = RB_ROOT;
 pool->cleanup = rxe_type_info[type].cleanup;

 atomic_set(&pool->num_elem, 0);

 kref_init(&pool->ref_cnt);

 rwlock_init(&pool->pool_lock);

 if (rxe_type_info[type].flags & RXE_POOL_INDEX) {
  err = rxe_pool_init_index(pool,
       rxe_type_info[type].max_index,
       rxe_type_info[type].min_index);
  if (err)
   goto out;
 }

 if (rxe_type_info[type].flags & RXE_POOL_KEY) {
  pool->key_offset = rxe_type_info[type].key_offset;
  pool->key_size = rxe_type_info[type].key_size;
 }

 pool->state = RXE_POOL_STATE_VALID;

out:
 return err;
}
