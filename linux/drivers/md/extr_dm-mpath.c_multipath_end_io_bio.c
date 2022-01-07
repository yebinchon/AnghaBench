
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pgpath {int path; TYPE_1__* pg; } ;
struct path_selector {TYPE_2__* type; } ;
struct multipath {int process_queued_bios; int flags; int lock; int queued_bios; int nr_valid_paths; } ;
struct dm_target {struct multipath* private; } ;
struct dm_mpath_io {int nr_bytes; struct pgpath* pgpath; } ;
struct bio {int dummy; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_4__ {int (* end_io ) (struct path_selector*,int *,int ) ;} ;
struct TYPE_3__ {struct path_selector ps; } ;


 scalar_t__ BLK_STS_IOERR ;
 int DM_ENDIO_DONE ;
 int DM_ENDIO_INCOMPLETE ;
 int DM_ENDIO_REQUEUE ;
 int MPATHF_QUEUE_IF_NO_PATH ;
 int MPATHF_QUEUE_IO ;
 scalar_t__ atomic_read (int *) ;
 int bio_list_add (int *,struct bio*) ;
 int blk_path_error (scalar_t__) ;
 int dm_report_EIO (struct multipath*) ;
 int fail_path (struct pgpath*) ;
 struct dm_mpath_io* get_mpio_from_bio (struct bio*) ;
 int kmultipathd ;
 scalar_t__ must_push_back_bio (struct multipath*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct path_selector*,int *,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int multipath_end_io_bio(struct dm_target *ti, struct bio *clone,
    blk_status_t *error)
{
 struct multipath *m = ti->private;
 struct dm_mpath_io *mpio = get_mpio_from_bio(clone);
 struct pgpath *pgpath = mpio->pgpath;
 unsigned long flags;
 int r = DM_ENDIO_DONE;

 if (!*error || !blk_path_error(*error))
  goto done;

 if (pgpath)
  fail_path(pgpath);

 if (atomic_read(&m->nr_valid_paths) == 0 &&
     !test_bit(MPATHF_QUEUE_IF_NO_PATH, &m->flags)) {
  if (must_push_back_bio(m)) {
   r = DM_ENDIO_REQUEUE;
  } else {
   dm_report_EIO(m);
   *error = BLK_STS_IOERR;
  }
  goto done;
 }

 spin_lock_irqsave(&m->lock, flags);
 bio_list_add(&m->queued_bios, clone);
 spin_unlock_irqrestore(&m->lock, flags);
 if (!test_bit(MPATHF_QUEUE_IO, &m->flags))
  queue_work(kmultipathd, &m->process_queued_bios);

 r = DM_ENDIO_INCOMPLETE;
done:
 if (pgpath) {
  struct path_selector *ps = &pgpath->pg->ps;

  if (ps->type->end_io)
   ps->type->end_io(ps, &pgpath->path, mpio->nr_bytes);
 }

 return r;
}
