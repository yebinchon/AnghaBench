
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {scalar_t__ pwrite; scalar_t__ size; int pread; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ READ_ONCE (int ) ;

ssize_t dvb_ringbuffer_free(struct dvb_ringbuffer *rbuf)
{
 ssize_t free;






 free = READ_ONCE(rbuf->pread) - rbuf->pwrite;
 if (free <= 0)
  free += rbuf->size;
 return free-1;
}
