
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct etnaviv_gem_submit {TYPE_3__* gpu; } ;
struct drm_sched_job {TYPE_2__* s_fence; } ;
struct dma_fence {int dummy; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int error; } ;
struct TYPE_5__ {TYPE_1__ finished; } ;


 int dev_dbg (int ,char*) ;
 struct dma_fence* etnaviv_gpu_submit (struct etnaviv_gem_submit*) ;
 scalar_t__ likely (int) ;
 struct etnaviv_gem_submit* to_etnaviv_submit (struct drm_sched_job*) ;

__attribute__((used)) static struct dma_fence *etnaviv_sched_run_job(struct drm_sched_job *sched_job)
{
 struct etnaviv_gem_submit *submit = to_etnaviv_submit(sched_job);
 struct dma_fence *fence = ((void*)0);

 if (likely(!sched_job->s_fence->finished.error))
  fence = etnaviv_gpu_submit(submit);
 else
  dev_dbg(submit->gpu->dev, "skipping bad job\n");

 return fence;
}
