
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {struct r5l_io_unit* log_io; } ;
struct r5l_io_unit {int pending_stripe; } ;


 int __r5l_stripe_write_finished (struct r5l_io_unit*) ;
 scalar_t__ atomic_dec_and_test (int *) ;

void r5l_stripe_write_finished(struct stripe_head *sh)
{
 struct r5l_io_unit *io;

 io = sh->log_io;
 sh->log_io = ((void*)0);

 if (io && atomic_dec_and_test(&io->pending_stripe))
  __r5l_stripe_write_finished(io);
}
