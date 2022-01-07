
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;


 int EFAULT ;
 int REG_A5XX_CP_SCRATCH_REG (int) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int pr_warn_ratelimited (char*,unsigned long,int,int ,int ,int ,int ) ;

__attribute__((used)) static int a5xx_fault_handler(void *arg, unsigned long iova, int flags)
{
 struct msm_gpu *gpu = arg;
 pr_warn_ratelimited("*** gpu fault: iova=%08lx, flags=%d (%u,%u,%u,%u)\n",
   iova, flags,
   gpu_read(gpu, REG_A5XX_CP_SCRATCH_REG(4)),
   gpu_read(gpu, REG_A5XX_CP_SCRATCH_REG(5)),
   gpu_read(gpu, REG_A5XX_CP_SCRATCH_REG(6)),
   gpu_read(gpu, REG_A5XX_CP_SCRATCH_REG(7)));

 return -EFAULT;
}
