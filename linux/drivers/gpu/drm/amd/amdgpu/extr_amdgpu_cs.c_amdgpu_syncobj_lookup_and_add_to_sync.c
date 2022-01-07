
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u64 ;
struct dma_fence {int dummy; } ;
struct amdgpu_cs_parser {TYPE_1__* job; int adev; int filp; } ;
struct TYPE_2__ {int sync; } ;


 int DRM_ERROR (char*,int ,int ,int) ;
 int amdgpu_sync_fence (int ,int *,struct dma_fence*,int) ;
 int dma_fence_put (struct dma_fence*) ;
 int drm_syncobj_find_fence (int ,int ,int ,int ,struct dma_fence**) ;

__attribute__((used)) static int amdgpu_syncobj_lookup_and_add_to_sync(struct amdgpu_cs_parser *p,
       uint32_t handle, u64 point,
       u64 flags)
{
 struct dma_fence *fence;
 int r;

 r = drm_syncobj_find_fence(p->filp, handle, point, flags, &fence);
 if (r) {
  DRM_ERROR("syncobj %u failed to find fence @ %llu (%d)!\n",
     handle, point, r);
  return r;
 }

 r = amdgpu_sync_fence(p->adev, &p->job->sync, fence, 1);
 dma_fence_put(fence);

 return r;
}
