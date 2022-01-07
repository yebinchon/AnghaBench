
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_gpu {int idle_mask; int dev; } ;


 int ETIMEDOUT ;
 int VIVS_HI_IDLE_STATE ;
 int dev_warn (int ,char*,int) ;
 int gpu_read (struct etnaviv_gpu*,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;
 int udelay (int) ;

int etnaviv_gpu_wait_idle(struct etnaviv_gpu *gpu, unsigned int timeout_ms)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(timeout_ms);

 do {
  u32 idle = gpu_read(gpu, VIVS_HI_IDLE_STATE);

  if ((idle & gpu->idle_mask) == gpu->idle_mask)
   return 0;

  if (time_is_before_jiffies(timeout)) {
   dev_warn(gpu->dev,
     "timed out waiting for idle: idle=0x%x\n",
     idle);
   return -ETIMEDOUT;
  }

  udelay(5);
 } while (1);
}
