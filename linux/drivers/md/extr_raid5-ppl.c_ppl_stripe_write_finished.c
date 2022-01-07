
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {struct ppl_io_unit* ppl_io; } ;
struct ppl_io_unit {TYPE_1__* log; int pending_stripes; } ;
struct TYPE_2__ {scalar_t__ disk_flush_bitmap; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int ppl_do_flush (struct ppl_io_unit*) ;
 int ppl_io_unit_finished (struct ppl_io_unit*) ;

void ppl_stripe_write_finished(struct stripe_head *sh)
{
 struct ppl_io_unit *io;

 io = sh->ppl_io;
 sh->ppl_io = ((void*)0);

 if (io && atomic_dec_and_test(&io->pending_stripes)) {
  if (io->log->disk_flush_bitmap)
   ppl_do_flush(io);
  else
   ppl_io_unit_finished(io);
 }
}
