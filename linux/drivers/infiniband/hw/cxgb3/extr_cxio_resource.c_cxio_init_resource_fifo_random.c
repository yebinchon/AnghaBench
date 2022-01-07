
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kfifo {int dummy; } ;
typedef int spinlock_t ;


 int __cxio_init_resource_fifo (struct kfifo*,int *,int ,int ,int ,int) ;

__attribute__((used)) static int cxio_init_resource_fifo_random(struct kfifo *fifo,
       spinlock_t * fifo_lock,
       u32 nr, u32 skip_low, u32 skip_high)
{

 return (__cxio_init_resource_fifo(fifo, fifo_lock, nr, skip_low,
       skip_high, 1));
}
