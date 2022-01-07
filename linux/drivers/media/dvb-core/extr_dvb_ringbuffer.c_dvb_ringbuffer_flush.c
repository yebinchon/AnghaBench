
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {scalar_t__ error; int pwrite; int pread; } ;


 int smp_load_acquire (int *) ;
 int smp_store_release (int *,int ) ;

void dvb_ringbuffer_flush(struct dvb_ringbuffer *rbuf)
{






 smp_store_release(&rbuf->pread, smp_load_acquire(&rbuf->pwrite));
 rbuf->error = 0;
}
