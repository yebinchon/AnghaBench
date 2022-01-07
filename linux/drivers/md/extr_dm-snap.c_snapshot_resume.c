
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mapped_device {int dummy; } ;
struct dm_target {int table; struct dm_snapshot* private; } ;
struct dm_snapshot {int active; int lock; int state_bits; TYPE_3__* ti; TYPE_1__* origin; } ;
struct dm_origin {TYPE_2__* ti; } ;
struct TYPE_6__ {int table; } ;
struct TYPE_5__ {int table; } ;
struct TYPE_4__ {int bdev; } ;


 int RUNNING_MERGE ;
 int SINGLE_DEPTH_NESTING ;
 int __find_snapshots_sharing_cow (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,struct dm_snapshot**) ;
 int __handover_exceptions (struct dm_snapshot*,struct dm_snapshot*) ;
 struct dm_origin* __lookup_dm_origin (int ) ;
 int _origins_lock ;
 scalar_t__ dm_hold (struct mapped_device*) ;
 int dm_internal_resume_fast (struct mapped_device*) ;
 int dm_internal_suspend_fast (struct mapped_device*) ;
 int dm_put (struct mapped_device*) ;
 struct mapped_device* dm_table_get_md (int ) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int down_write_nested (int *,int ) ;
 int reregister_snapshot (struct dm_snapshot*) ;
 int start_merge (struct dm_snapshot*) ;
 int stop_merge (struct dm_snapshot*) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void snapshot_resume(struct dm_target *ti)
{
 struct dm_snapshot *s = ti->private;
 struct dm_snapshot *snap_src = ((void*)0), *snap_dest = ((void*)0), *snap_merging = ((void*)0);
 struct dm_origin *o;
 struct mapped_device *origin_md = ((void*)0);
 bool must_restart_merging = 0;

 down_read(&_origins_lock);

 o = __lookup_dm_origin(s->origin->bdev);
 if (o)
  origin_md = dm_table_get_md(o->ti->table);
 if (!origin_md) {
  (void) __find_snapshots_sharing_cow(s, ((void*)0), ((void*)0), &snap_merging);
  if (snap_merging)
   origin_md = dm_table_get_md(snap_merging->ti->table);
 }
 if (origin_md == dm_table_get_md(ti->table))
  origin_md = ((void*)0);
 if (origin_md) {
  if (dm_hold(origin_md))
   origin_md = ((void*)0);
 }

 up_read(&_origins_lock);

 if (origin_md) {
  dm_internal_suspend_fast(origin_md);
  if (snap_merging && test_bit(RUNNING_MERGE, &snap_merging->state_bits)) {
   must_restart_merging = 1;
   stop_merge(snap_merging);
  }
 }

 down_read(&_origins_lock);

 (void) __find_snapshots_sharing_cow(s, &snap_src, &snap_dest, ((void*)0));
 if (snap_src && snap_dest) {
  down_write(&snap_src->lock);
  down_write_nested(&snap_dest->lock, SINGLE_DEPTH_NESTING);
  __handover_exceptions(snap_src, snap_dest);
  up_write(&snap_dest->lock);
  up_write(&snap_src->lock);
 }

 up_read(&_origins_lock);

 if (origin_md) {
  if (must_restart_merging)
   start_merge(snap_merging);
  dm_internal_resume_fast(origin_md);
  dm_put(origin_md);
 }


 reregister_snapshot(s);

 down_write(&s->lock);
 s->active = 1;
 up_write(&s->lock);
}
