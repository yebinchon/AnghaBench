
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ioatdma_chan {int dummy; } ;


 int ETIMEDOUT ;
 int cpu_relax () ;
 int ioat_chansts (struct ioatdma_chan*) ;
 int ioat_suspend (struct ioatdma_chan*) ;
 scalar_t__ is_ioat_active (int ) ;
 scalar_t__ is_ioat_idle (int ) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int ioat_quiesce(struct ioatdma_chan *ioat_chan, unsigned long tmo)
{
 unsigned long end = jiffies + tmo;
 int err = 0;
 u32 status;

 status = ioat_chansts(ioat_chan);
 if (is_ioat_active(status) || is_ioat_idle(status))
  ioat_suspend(ioat_chan);
 while (is_ioat_active(status) || is_ioat_idle(status)) {
  if (tmo && time_after(jiffies, end)) {
   err = -ETIMEDOUT;
   break;
  }
  status = ioat_chansts(ioat_chan);
  cpu_relax();
 }

 return err;
}
