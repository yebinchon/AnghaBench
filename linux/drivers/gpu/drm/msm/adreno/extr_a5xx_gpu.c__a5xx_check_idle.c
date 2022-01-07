
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;


 int A5XX_RBBM_INT_0_MASK_MISC_HANG_DETECT ;
 int A5XX_RBBM_STATUS_HI_BUSY ;
 int REG_A5XX_RBBM_INT_0_STATUS ;
 int REG_A5XX_RBBM_STATUS ;
 int gpu_read (struct msm_gpu*,int ) ;

__attribute__((used)) static inline bool _a5xx_check_idle(struct msm_gpu *gpu)
{
 if (gpu_read(gpu, REG_A5XX_RBBM_STATUS) & ~A5XX_RBBM_STATUS_HI_BUSY)
  return 0;





 return !(gpu_read(gpu, REG_A5XX_RBBM_INT_0_STATUS) &
  A5XX_RBBM_INT_0_MASK_MISC_HANG_DETECT);
}
