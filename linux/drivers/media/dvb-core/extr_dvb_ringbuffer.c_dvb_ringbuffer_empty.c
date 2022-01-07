
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {scalar_t__ pread; int pwrite; } ;


 scalar_t__ smp_load_acquire (int *) ;

int dvb_ringbuffer_empty(struct dvb_ringbuffer *rbuf)
{






 return (rbuf->pread == smp_load_acquire(&rbuf->pwrite));
}
