
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kfifo {int dummy; } ;
typedef int spinlock_t ;


 scalar_t__ kfifo_out_locked (struct kfifo*,unsigned char*,int,int *) ;

__attribute__((used)) static u32 cxio_hal_get_resource(struct kfifo *fifo, spinlock_t * lock)
{
 u32 entry;
 if (kfifo_out_locked(fifo, (unsigned char *) &entry, sizeof(u32), lock))
  return entry;
 else
  return 0;
}
