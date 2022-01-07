
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;


 int REG_A2XX_RBBM_STATUS ;
 int adreno_dump (struct msm_gpu*) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static void a2xx_dump(struct msm_gpu *gpu)
{
 printk("status:   %08x\n",
   gpu_read(gpu, REG_A2XX_RBBM_STATUS));
 adreno_dump(gpu);
}
