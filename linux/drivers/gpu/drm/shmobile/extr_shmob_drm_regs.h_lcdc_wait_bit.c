
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shmob_drm_device {int dummy; } ;


 int ETIMEDOUT ;
 int cpu_relax () ;
 unsigned long jiffies ;
 int lcdc_read (struct shmob_drm_device*,int) ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static inline int lcdc_wait_bit(struct shmob_drm_device *sdev, u32 reg,
    u32 mask, u32 until)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(5);

 while ((lcdc_read(sdev, reg) & mask) != until) {
  if (time_after(jiffies, timeout))
   return -ETIMEDOUT;
  cpu_relax();
 }

 return 0;
}
