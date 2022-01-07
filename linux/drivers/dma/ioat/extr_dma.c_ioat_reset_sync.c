
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int dummy; } ;


 int ETIMEDOUT ;
 int cpu_relax () ;
 int ioat_reset (struct ioatdma_chan*) ;
 scalar_t__ ioat_reset_pending (struct ioatdma_chan*) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int ioat_reset_sync(struct ioatdma_chan *ioat_chan, unsigned long tmo)
{
 unsigned long end = jiffies + tmo;
 int err = 0;

 ioat_reset(ioat_chan);
 while (ioat_reset_pending(ioat_chan)) {
  if (end && time_after(jiffies, end)) {
   err = -ETIMEDOUT;
   break;
  }
  cpu_relax();
 }

 return err;
}
