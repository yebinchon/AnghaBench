
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {int lock; int ti; } ;


 int DMERR (char*) ;
 int EINVAL ;
 int __find_snapshots_sharing_cow (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,int *) ;
 int _origins_lock ;
 int dm_suspended (int ) ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static int snapshot_preresume(struct dm_target *ti)
{
 int r = 0;
 struct dm_snapshot *s = ti->private;
 struct dm_snapshot *snap_src = ((void*)0), *snap_dest = ((void*)0);

 down_read(&_origins_lock);
 (void) __find_snapshots_sharing_cow(s, &snap_src, &snap_dest, ((void*)0));
 if (snap_src && snap_dest) {
  down_read(&snap_src->lock);
  if (s == snap_src) {
   DMERR("Unable to resume snapshot source until "
         "handover completes.");
   r = -EINVAL;
  } else if (!dm_suspended(snap_src->ti)) {
   DMERR("Unable to perform snapshot handover until "
         "source is suspended.");
   r = -EINVAL;
  }
  up_read(&snap_src->lock);
 }
 up_read(&_origins_lock);

 return r;
}
