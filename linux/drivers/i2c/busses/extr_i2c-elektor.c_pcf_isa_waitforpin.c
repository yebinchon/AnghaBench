
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_WAIT (int ) ;
 int HZ ;
 int TASK_INTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 scalar_t__ irq ;
 int lock ;
 int pcf_pending ;
 int pcf_wait ;
 int prepare_to_wait (int *,int *,int ) ;
 scalar_t__ schedule_timeout (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int wait ;

__attribute__((used)) static void pcf_isa_waitforpin(void *data)
{
 DEFINE_WAIT(wait);
 int timeout = 2;
 unsigned long flags;

 if (irq > 0) {
  spin_lock_irqsave(&lock, flags);
  if (pcf_pending == 0) {
   spin_unlock_irqrestore(&lock, flags);
   prepare_to_wait(&pcf_wait, &wait, TASK_INTERRUPTIBLE);
   if (schedule_timeout(timeout*HZ)) {
    spin_lock_irqsave(&lock, flags);
    if (pcf_pending == 1) {
     pcf_pending = 0;
    }
    spin_unlock_irqrestore(&lock, flags);
   }
   finish_wait(&pcf_wait, &wait);
  } else {
   pcf_pending = 0;
   spin_unlock_irqrestore(&lock, flags);
  }
 } else {
  udelay(100);
 }
}
