
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {scalar_t__ pread; scalar_t__ size; int pwrite; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ smp_load_acquire (int *) ;

ssize_t dvb_ringbuffer_avail(struct dvb_ringbuffer *rbuf)
{
 ssize_t avail;





 avail = smp_load_acquire(&rbuf->pwrite) - rbuf->pread;
 if (avail < 0)
  avail += rbuf->size;
 return avail;
}
