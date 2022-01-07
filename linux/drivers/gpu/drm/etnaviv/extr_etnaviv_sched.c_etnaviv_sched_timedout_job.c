
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct etnaviv_gpu {void* hangcheck_dma_addr; int sched; } ;
struct etnaviv_gem_submit {int out_fence; struct etnaviv_gpu* gpu; } ;
struct drm_sched_job {int dummy; } ;


 int VIVS_FE_DMA_ADDRESS ;
 scalar_t__ dma_fence_is_signaled (int ) ;
 int drm_sched_increase_karma (struct drm_sched_job*) ;
 int drm_sched_resubmit_jobs (int *) ;
 int drm_sched_start (int *,int) ;
 int drm_sched_stop (int *,struct drm_sched_job*) ;
 int etnaviv_core_dump (struct etnaviv_gem_submit*) ;
 int etnaviv_gpu_recover_hang (struct etnaviv_gpu*) ;
 void* gpu_read (struct etnaviv_gpu*,int ) ;
 struct etnaviv_gem_submit* to_etnaviv_submit (struct drm_sched_job*) ;

__attribute__((used)) static void etnaviv_sched_timedout_job(struct drm_sched_job *sched_job)
{
 struct etnaviv_gem_submit *submit = to_etnaviv_submit(sched_job);
 struct etnaviv_gpu *gpu = submit->gpu;
 u32 dma_addr;
 int change;





 if (dma_fence_is_signaled(submit->out_fence))
  return;






 dma_addr = gpu_read(gpu, VIVS_FE_DMA_ADDRESS);
 change = dma_addr - gpu->hangcheck_dma_addr;
 if (change < 0 || change > 16) {
  gpu->hangcheck_dma_addr = dma_addr;
  return;
 }


 drm_sched_stop(&gpu->sched, sched_job);

 if(sched_job)
  drm_sched_increase_karma(sched_job);


 etnaviv_core_dump(submit);
 etnaviv_gpu_recover_hang(gpu);

 drm_sched_resubmit_jobs(&gpu->sched);


 drm_sched_start(&gpu->sched, 1);
}
