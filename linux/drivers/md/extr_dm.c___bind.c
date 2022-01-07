
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct queue_limits {int dummy; } ;
struct mapped_device {scalar_t__ type; int immutable_target_type; int map; int suspend_lock; int immutable_target; int geometry; struct request_queue* queue; } ;
struct dm_table {int dummy; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ DM_TYPE_NVME_BIO_BASED ;
 struct dm_table* ERR_PTR (int) ;
 int __bind_mempools (struct mapped_device*,struct dm_table*) ;
 int __set_size (struct mapped_device*,scalar_t__) ;
 scalar_t__ dm_get_size (struct mapped_device*) ;
 int dm_stop_queue (struct request_queue*) ;
 int dm_sync_table (struct mapped_device*) ;
 int dm_table_event_callback (struct dm_table*,int ,struct mapped_device*) ;
 int dm_table_get_immutable_target (struct dm_table*) ;
 int dm_table_get_immutable_target_type (struct dm_table*) ;
 scalar_t__ dm_table_get_size (struct dm_table*) ;
 int dm_table_request_based (struct dm_table*) ;
 int dm_table_set_restrictions (struct dm_table*,struct request_queue*,struct queue_limits*) ;
 int event_callback ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 int memset (int *,int ,int) ;
 int rcu_assign_pointer (int ,void*) ;
 struct dm_table* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static struct dm_table *__bind(struct mapped_device *md, struct dm_table *t,
          struct queue_limits *limits)
{
 struct dm_table *old_map;
 struct request_queue *q = md->queue;
 bool request_based = dm_table_request_based(t);
 sector_t size;
 int ret;

 lockdep_assert_held(&md->suspend_lock);

 size = dm_table_get_size(t);




 if (size != dm_get_size(md))
  memset(&md->geometry, 0, sizeof(md->geometry));

 __set_size(md, size);

 dm_table_event_callback(t, event_callback, md);
 if (request_based)
  dm_stop_queue(q);

 if (request_based || md->type == DM_TYPE_NVME_BIO_BASED) {






  md->immutable_target = dm_table_get_immutable_target(t);
 }

 ret = __bind_mempools(md, t);
 if (ret) {
  old_map = ERR_PTR(ret);
  goto out;
 }

 old_map = rcu_dereference_protected(md->map, lockdep_is_held(&md->suspend_lock));
 rcu_assign_pointer(md->map, (void *)t);
 md->immutable_target_type = dm_table_get_immutable_target_type(t);

 dm_table_set_restrictions(t, q, limits);
 if (old_map)
  dm_sync_table(md);

out:
 return old_map;
}
