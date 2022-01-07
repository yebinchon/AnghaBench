
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5l_log {int io_list_lock; } ;
struct r5l_io_unit {TYPE_1__* current_bio; scalar_t__ has_fua; scalar_t__ has_flush; TYPE_1__* split_bio; } ;
struct TYPE_2__ {int bi_opf; } ;


 int IO_UNIT_IO_START ;
 int REQ_FUA ;
 int REQ_PREFLUSH ;
 int __r5l_set_io_unit_state (struct r5l_io_unit*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int submit_bio (TYPE_1__*) ;

__attribute__((used)) static void r5l_do_submit_io(struct r5l_log *log, struct r5l_io_unit *io)
{
 unsigned long flags;

 spin_lock_irqsave(&log->io_list_lock, flags);
 __r5l_set_io_unit_state(io, IO_UNIT_IO_START);
 spin_unlock_irqrestore(&log->io_list_lock, flags);
 if (io->split_bio) {
  if (io->has_flush)
   io->split_bio->bi_opf |= REQ_PREFLUSH;
  if (io->has_fua)
   io->split_bio->bi_opf |= REQ_FUA;
  submit_bio(io->split_bio);
 }

 if (io->has_flush)
  io->current_bio->bi_opf |= REQ_PREFLUSH;
 if (io->has_fua)
  io->current_bio->bi_opf |= REQ_FUA;
 submit_bio(io->current_bio);
}
