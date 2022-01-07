
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int queue; } ;
struct dm_table {int dummy; } ;


 int dm_queue_flush (struct mapped_device*) ;
 scalar_t__ dm_request_based (struct mapped_device*) ;
 int dm_start_queue (int ) ;
 int dm_table_resume_targets (struct dm_table*) ;
 int unlock_fs (struct mapped_device*) ;

__attribute__((used)) static int __dm_resume(struct mapped_device *md, struct dm_table *map)
{
 if (map) {
  int r = dm_table_resume_targets(map);
  if (r)
   return r;
 }

 dm_queue_flush(md);






 if (dm_request_based(md))
  dm_start_queue(md->queue);

 unlock_fs(md);

 return 0;
}
