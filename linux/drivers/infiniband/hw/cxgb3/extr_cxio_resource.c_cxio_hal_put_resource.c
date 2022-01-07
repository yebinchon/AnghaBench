
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kfifo {int dummy; } ;
typedef int spinlock_t ;


 int BUG_ON (int) ;
 scalar_t__ kfifo_in_locked (struct kfifo*,unsigned char*,int,int *) ;

__attribute__((used)) static void cxio_hal_put_resource(struct kfifo *fifo, spinlock_t * lock,
  u32 entry)
{
 BUG_ON(
 kfifo_in_locked(fifo, (unsigned char *) &entry, sizeof(u32), lock)
 == 0);
}
