
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msm_ringbuffer {int id; int fctx; int lock; int submits; int memptrs_iova; void* memptrs; scalar_t__ start; scalar_t__ cur; scalar_t__ next; scalar_t__ end; int bo; int iova; struct msm_gpu* gpu; } ;
struct msm_gpu {int dev; int aspace; } ;
typedef int name ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 struct msm_ringbuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int MSM_BO_WC ;
 int MSM_GPU_RINGBUFFER_SZ ;
 int PTR_ERR (scalar_t__) ;
 int is_power_of_2 (int) ;
 struct msm_ringbuffer* kzalloc (int,int ) ;
 int msm_fence_context_alloc (int ,char*) ;
 scalar_t__ msm_gem_kernel_new (int ,int,int ,int ,int *,int *) ;
 int msm_gem_object_set_name (int ,char*,int) ;
 int msm_ringbuffer_destroy (struct msm_ringbuffer*) ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_init (int *) ;

struct msm_ringbuffer *msm_ringbuffer_new(struct msm_gpu *gpu, int id,
  void *memptrs, uint64_t memptrs_iova)
{
 struct msm_ringbuffer *ring;
 char name[32];
 int ret;


 BUILD_BUG_ON(!is_power_of_2(MSM_GPU_RINGBUFFER_SZ));

 ring = kzalloc(sizeof(*ring), GFP_KERNEL);
 if (!ring) {
  ret = -ENOMEM;
  goto fail;
 }

 ring->gpu = gpu;
 ring->id = id;

 ring->start = msm_gem_kernel_new(gpu->dev, MSM_GPU_RINGBUFFER_SZ,
  MSM_BO_WC, gpu->aspace, &ring->bo, &ring->iova);

 if (IS_ERR(ring->start)) {
  ret = PTR_ERR(ring->start);
  ring->start = 0;
  goto fail;
 }

 msm_gem_object_set_name(ring->bo, "ring%d", id);

 ring->end = ring->start + (MSM_GPU_RINGBUFFER_SZ >> 2);
 ring->next = ring->start;
 ring->cur = ring->start;

 ring->memptrs = memptrs;
 ring->memptrs_iova = memptrs_iova;

 INIT_LIST_HEAD(&ring->submits);
 spin_lock_init(&ring->lock);

 snprintf(name, sizeof(name), "gpu-ring-%d", ring->id);

 ring->fctx = msm_fence_context_alloc(gpu->dev, name);

 return ring;

fail:
 msm_ringbuffer_destroy(ring);
 return ERR_PTR(ret);
}
