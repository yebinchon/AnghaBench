
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5l_log {scalar_t__ r5c_journal_mode; int io_mutex; TYPE_2__* current_io; } ;
struct TYPE_3__ {scalar_t__ bi_size; } ;
struct bio {TYPE_1__ bi_iter; int bi_opf; } ;
struct TYPE_4__ {int has_flush; int has_null_flush; int pending_stripe; int flush_barriers; } ;


 int EAGAIN ;
 scalar_t__ R5C_JOURNAL_MODE_WRITE_THROUGH ;
 int REQ_PREFLUSH ;
 int atomic_inc (int *) ;
 int bio_endio (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int r5l_get_meta (struct r5l_log*,int ) ;
 int r5l_submit_current_io (struct r5l_log*) ;

int r5l_handle_flush_request(struct r5l_log *log, struct bio *bio)
{
 if (log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_THROUGH) {







  if (bio->bi_iter.bi_size == 0) {
   bio_endio(bio);
   return 0;
  }
  bio->bi_opf &= ~REQ_PREFLUSH;
 } else {

  if (bio->bi_iter.bi_size == 0) {
   mutex_lock(&log->io_mutex);
   r5l_get_meta(log, 0);
   bio_list_add(&log->current_io->flush_barriers, bio);
   log->current_io->has_flush = 1;
   log->current_io->has_null_flush = 1;
   atomic_inc(&log->current_io->pending_stripe);
   r5l_submit_current_io(log);
   mutex_unlock(&log->io_mutex);
   return 0;
  }
 }
 return -EAGAIN;
}
