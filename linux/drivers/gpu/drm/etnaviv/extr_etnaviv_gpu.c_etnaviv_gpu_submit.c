
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct etnaviv_gpu {int lock; TYPE_1__* event; scalar_t__ mmu_context; int dev; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ user_size; } ;
struct etnaviv_gem_submit {int runtime_resumed; int refcount; scalar_t__ nr_pmrs; TYPE_2__ cmdbuf; scalar_t__ mmu_context; int exec_state; scalar_t__ prev_mmu_context; struct etnaviv_gpu* gpu; } ;
struct dma_fence {int dummy; } ;
struct TYPE_3__ {struct etnaviv_gem_submit* submit; int * sync_point; struct dma_fence* fence; } ;


 int DRM_ERROR (char*) ;
 int etnaviv_buffer_queue (struct etnaviv_gpu*,int ,scalar_t__,unsigned int,TYPE_2__*) ;
 struct dma_fence* etnaviv_gpu_fence_alloc (struct etnaviv_gpu*) ;
 int etnaviv_gpu_start_fe_idleloop (struct etnaviv_gpu*) ;
 int etnaviv_iommu_context_get (scalar_t__) ;
 int etnaviv_sync_point_queue (struct etnaviv_gpu*,unsigned int) ;
 int event_alloc (struct etnaviv_gpu*,unsigned int,unsigned int*) ;
 int event_free (struct etnaviv_gpu*,unsigned int) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int sync_point_perfmon_sample_post ;
 int sync_point_perfmon_sample_pre ;

struct dma_fence *etnaviv_gpu_submit(struct etnaviv_gem_submit *submit)
{
 struct etnaviv_gpu *gpu = submit->gpu;
 struct dma_fence *gpu_fence;
 unsigned int i, nr_events = 1, event[3];
 int ret;

 if (!submit->runtime_resumed) {
  ret = pm_runtime_get_sync(gpu->dev);
  if (ret < 0)
   return ((void*)0);
  submit->runtime_resumed = 1;
 }
 if (submit->nr_pmrs)
  nr_events = 3;

 ret = event_alloc(gpu, nr_events, event);
 if (ret) {
  DRM_ERROR("no free events\n");
  return ((void*)0);
 }

 mutex_lock(&gpu->lock);

 gpu_fence = etnaviv_gpu_fence_alloc(gpu);
 if (!gpu_fence) {
  for (i = 0; i < nr_events; i++)
   event_free(gpu, event[i]);

  goto out_unlock;
 }

 if (!gpu->mmu_context) {
  etnaviv_iommu_context_get(submit->mmu_context);
  gpu->mmu_context = submit->mmu_context;
  etnaviv_gpu_start_fe_idleloop(gpu);
 } else {
  etnaviv_iommu_context_get(gpu->mmu_context);
  submit->prev_mmu_context = gpu->mmu_context;
 }

 if (submit->nr_pmrs) {
  gpu->event[event[1]].sync_point = &sync_point_perfmon_sample_pre;
  kref_get(&submit->refcount);
  gpu->event[event[1]].submit = submit;
  etnaviv_sync_point_queue(gpu, event[1]);
 }

 gpu->event[event[0]].fence = gpu_fence;
 submit->cmdbuf.user_size = submit->cmdbuf.size - 8;
 etnaviv_buffer_queue(gpu, submit->exec_state, submit->mmu_context,
        event[0], &submit->cmdbuf);

 if (submit->nr_pmrs) {
  gpu->event[event[2]].sync_point = &sync_point_perfmon_sample_post;
  kref_get(&submit->refcount);
  gpu->event[event[2]].submit = submit;
  etnaviv_sync_point_queue(gpu, event[2]);
 }

out_unlock:
 mutex_unlock(&gpu->lock);

 return gpu_fence;
}
