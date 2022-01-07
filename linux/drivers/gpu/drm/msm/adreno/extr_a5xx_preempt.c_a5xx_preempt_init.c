
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int nr_rings; int * rb; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int preempt_timer; } ;


 int a5xx_preempt_fini (struct msm_gpu*) ;
 int a5xx_preempt_timer ;
 scalar_t__ preempt_init_ring (struct a5xx_gpu*,int ) ;
 int timer_setup (int *,int ,int ) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

void a5xx_preempt_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 int i;


 if (gpu->nr_rings <= 1)
  return;

 for (i = 0; i < gpu->nr_rings; i++) {
  if (preempt_init_ring(a5xx_gpu, gpu->rb[i])) {




   a5xx_preempt_fini(gpu);
   gpu->nr_rings = 1;

   return;
  }
 }

 timer_setup(&a5xx_gpu->preempt_timer, a5xx_preempt_timer, 0);
}
