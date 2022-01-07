
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {int max_io_len; struct dm_snapshot* private; } ;
struct dm_snapshot {TYPE_1__* origin; } ;
struct TYPE_2__ {int bdev; } ;


 int get_origin_minimum_chunksize (int ) ;
 int snapshot_resume (struct dm_target*) ;
 int start_merge (struct dm_snapshot*) ;

__attribute__((used)) static void snapshot_merge_resume(struct dm_target *ti)
{
 struct dm_snapshot *s = ti->private;




 snapshot_resume(ti);




 ti->max_io_len = get_origin_minimum_chunksize(s->origin->bdev);

 start_merge(s);
}
