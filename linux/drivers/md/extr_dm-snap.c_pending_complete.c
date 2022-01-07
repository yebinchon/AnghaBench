
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int lock; int complete; int valid; } ;
struct dm_exception {int old_chunk; } ;
struct dm_snap_pending_exception {int full_bio_end_io; struct bio* full_bio; int origin_bios; int snapshot_bios; struct dm_exception e; struct dm_snapshot* snap; } ;
struct dm_exception_table_lock {int dummy; } ;
struct bio {int bi_end_io; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_NOIO ;
 int __check_for_conflicting_io (struct dm_snapshot*,int ) ;
 scalar_t__ __chunk_is_tracked (struct dm_snapshot*,int ) ;
 struct dm_exception* alloc_completed_exception (int ) ;
 int bio_endio (struct bio*) ;
 int bio_io_error (struct bio*) ;
 struct bio* bio_list_get (int *) ;
 int dm_exception_table_lock (struct dm_exception_table_lock*) ;
 int dm_exception_table_lock_init (struct dm_snapshot*,int ,struct dm_exception_table_lock*) ;
 int dm_exception_table_unlock (struct dm_exception_table_lock*) ;
 int dm_insert_exception (int *,struct dm_exception*) ;
 int dm_remove_exception (struct dm_exception*) ;
 int down_read (int *) ;
 int error_bios (struct bio*) ;
 int flush_bios (struct bio*) ;
 int free_completed_exception (struct dm_exception*) ;
 int free_pending_exception (struct dm_snap_pending_exception*) ;
 int increment_pending_exceptions_done_count () ;
 int invalidate_snapshot (struct dm_snapshot*,int ) ;
 int retry_origin_bios (struct dm_snapshot*,struct bio*) ;
 int up_read (int *) ;

__attribute__((used)) static void pending_complete(void *context, int success)
{
 struct dm_snap_pending_exception *pe = context;
 struct dm_exception *e;
 struct dm_snapshot *s = pe->snap;
 struct bio *origin_bios = ((void*)0);
 struct bio *snapshot_bios = ((void*)0);
 struct bio *full_bio = ((void*)0);
 struct dm_exception_table_lock lock;
 int error = 0;

 dm_exception_table_lock_init(s, pe->e.old_chunk, &lock);

 if (!success) {

  invalidate_snapshot(s, -EIO);
  error = 1;

  dm_exception_table_lock(&lock);
  goto out;
 }

 e = alloc_completed_exception(GFP_NOIO);
 if (!e) {
  invalidate_snapshot(s, -ENOMEM);
  error = 1;

  dm_exception_table_lock(&lock);
  goto out;
 }
 *e = pe->e;

 down_read(&s->lock);
 dm_exception_table_lock(&lock);
 if (!s->valid) {
  up_read(&s->lock);
  free_completed_exception(e);
  error = 1;

  goto out;
 }
 dm_insert_exception(&s->complete, e);
 up_read(&s->lock);


 if (__chunk_is_tracked(s, pe->e.old_chunk)) {
  dm_exception_table_unlock(&lock);
  __check_for_conflicting_io(s, pe->e.old_chunk);
  dm_exception_table_lock(&lock);
 }

out:

 dm_remove_exception(&pe->e);

 dm_exception_table_unlock(&lock);

 snapshot_bios = bio_list_get(&pe->snapshot_bios);
 origin_bios = bio_list_get(&pe->origin_bios);
 full_bio = pe->full_bio;
 if (full_bio)
  full_bio->bi_end_io = pe->full_bio_end_io;
 increment_pending_exceptions_done_count();


 if (error) {
  if (full_bio)
   bio_io_error(full_bio);
  error_bios(snapshot_bios);
 } else {
  if (full_bio)
   bio_endio(full_bio);
  flush_bios(snapshot_bios);
 }

 retry_origin_bios(s, origin_bios);

 free_pending_exception(pe);
}
