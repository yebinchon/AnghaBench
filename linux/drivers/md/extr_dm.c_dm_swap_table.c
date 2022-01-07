
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_limits {int dummy; } ;
struct mapped_device {int suspend_lock; TYPE_1__* queue; } ;
struct dm_table {int dummy; } ;
struct TYPE_2__ {struct queue_limits limits; } ;


 int EINVAL ;
 struct dm_table* ERR_PTR (int) ;
 struct dm_table* __bind (struct mapped_device*,struct dm_table*,struct queue_limits*) ;
 int dm_calculate_queue_limits (struct dm_table*,struct queue_limits*) ;
 struct dm_table* dm_get_live_table_fast (struct mapped_device*) ;
 int dm_issue_global_event () ;
 int dm_put_live_table_fast (struct mapped_device*) ;
 int dm_suspended_md (struct mapped_device*) ;
 scalar_t__ dm_table_has_no_data_devices (struct dm_table*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct dm_table *dm_swap_table(struct mapped_device *md, struct dm_table *table)
{
 struct dm_table *live_map = ((void*)0), *map = ERR_PTR(-EINVAL);
 struct queue_limits limits;
 int r;

 mutex_lock(&md->suspend_lock);


 if (!dm_suspended_md(md))
  goto out;







 if (dm_table_has_no_data_devices(table)) {
  live_map = dm_get_live_table_fast(md);
  if (live_map)
   limits = md->queue->limits;
  dm_put_live_table_fast(md);
 }

 if (!live_map) {
  r = dm_calculate_queue_limits(table, &limits);
  if (r) {
   map = ERR_PTR(r);
   goto out;
  }
 }

 map = __bind(md, table, &limits);
 dm_issue_global_event();

out:
 mutex_unlock(&md->suspend_lock);
 return map;
}
