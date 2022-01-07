
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {int deferred_lock; int deferred; } ;
struct dm_io {scalar_t__ status; struct bio* orig_bio; int io_count; int endio_lock; struct mapped_device* md; } ;
struct TYPE_2__ {scalar_t__ bi_size; } ;
struct bio {int bi_opf; scalar_t__ bi_status; TYPE_1__ bi_iter; } ;
typedef scalar_t__ blk_status_t ;


 scalar_t__ BLK_STS_DM_REQUEUE ;
 scalar_t__ BLK_STS_IOERR ;
 int REQ_PREFLUSH ;
 scalar_t__ __noflush_suspending (struct mapped_device*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_endio (struct bio*) ;
 int bio_list_add_head (int *,struct bio*) ;
 int end_io_acct (struct dm_io*) ;
 int free_io (struct mapped_device*,struct dm_io*) ;
 int queue_io (struct mapped_device*,struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static void dec_pending(struct dm_io *io, blk_status_t error)
{
 unsigned long flags;
 blk_status_t io_error;
 struct bio *bio;
 struct mapped_device *md = io->md;


 if (unlikely(error)) {
  spin_lock_irqsave(&io->endio_lock, flags);
  if (!(io->status == BLK_STS_DM_REQUEUE && __noflush_suspending(md)))
   io->status = error;
  spin_unlock_irqrestore(&io->endio_lock, flags);
 }

 if (atomic_dec_and_test(&io->io_count)) {
  if (io->status == BLK_STS_DM_REQUEUE) {



   spin_lock_irqsave(&md->deferred_lock, flags);
   if (__noflush_suspending(md))

    bio_list_add_head(&md->deferred, io->orig_bio);
   else

    io->status = BLK_STS_IOERR;
   spin_unlock_irqrestore(&md->deferred_lock, flags);
  }

  io_error = io->status;
  bio = io->orig_bio;
  end_io_acct(io);
  free_io(md, io);

  if (io_error == BLK_STS_DM_REQUEUE)
   return;

  if ((bio->bi_opf & REQ_PREFLUSH) && bio->bi_iter.bi_size) {




   bio->bi_opf &= ~REQ_PREFLUSH;
   queue_io(md, bio);
  } else {

   if (io_error)
    bio->bi_status = io_error;
   bio_endio(bio);
  }
 }
}
