
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_gpu {int dummy; } ;


 int ETIMEDOUT ;
 int cpu_relax () ;
 int gpu_read (struct msm_gpu*,int) ;
 int udelay (int) ;

__attribute__((used)) static inline int spin_usecs(struct msm_gpu *gpu, uint32_t usecs,
  uint32_t reg, uint32_t mask, uint32_t value)
{
 while (usecs--) {
  udelay(1);
  if ((gpu_read(gpu, reg) & mask) == value)
   return 0;
  cpu_relax();
 }

 return -ETIMEDOUT;
}
