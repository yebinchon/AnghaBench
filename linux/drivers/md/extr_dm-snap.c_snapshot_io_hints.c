
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_limits {int max_discard_sectors; int discard_granularity; } ;
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {TYPE_1__* store; scalar_t__ discard_zeroes_cow; } ;
struct TYPE_2__ {int chunk_size; } ;


 int __find_snapshots_sharing_cow (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,int *) ;
 int _origins_lock ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static void snapshot_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct dm_snapshot *snap = ti->private;

 if (snap->discard_zeroes_cow) {
  struct dm_snapshot *snap_src = ((void*)0), *snap_dest = ((void*)0);

  down_read(&_origins_lock);

  (void) __find_snapshots_sharing_cow(snap, &snap_src, &snap_dest, ((void*)0));
  if (snap_src && snap_dest)
   snap = snap_src;


  limits->discard_granularity = snap->store->chunk_size;
  limits->max_discard_sectors = snap->store->chunk_size;

  up_read(&_origins_lock);
 }
}
