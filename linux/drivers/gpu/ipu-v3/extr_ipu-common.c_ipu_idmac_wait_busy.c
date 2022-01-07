
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int dummy; } ;


 int ETIMEDOUT ;
 int IDMAC_CHA_BUSY (int ) ;
 int cpu_relax () ;
 int idma_mask (int ) ;
 int ipu_idmac_read (struct ipu_soc*,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int ipu_idmac_wait_busy(struct ipuv3_channel *channel, int ms)
{
 struct ipu_soc *ipu = channel->ipu;
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(ms);
 while (ipu_idmac_read(ipu, IDMAC_CHA_BUSY(channel->num)) &
   idma_mask(channel->num)) {
  if (time_after(jiffies, timeout))
   return -ETIMEDOUT;
  cpu_relax();
 }

 return 0;
}
