
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {scalar_t__ error; int pwrite; int pread; } ;


 int smp_store_release (int *,int ) ;

void dvb_ringbuffer_reset(struct dvb_ringbuffer *rbuf)
{



 smp_store_release(&rbuf->pread, 0);

 smp_store_release(&rbuf->pwrite, 0);
 rbuf->error = 0;
}
