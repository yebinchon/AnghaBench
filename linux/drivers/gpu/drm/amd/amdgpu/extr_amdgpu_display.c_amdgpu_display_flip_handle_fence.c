
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct amdgpu_flip_work {int cb; } ;


 int amdgpu_display_flip_callback ;
 int dma_fence_add_callback (struct dma_fence*,int *,int ) ;
 int dma_fence_put (struct dma_fence*) ;

__attribute__((used)) static bool amdgpu_display_flip_handle_fence(struct amdgpu_flip_work *work,
          struct dma_fence **f)
{
 struct dma_fence *fence= *f;

 if (fence == ((void*)0))
  return 0;

 *f = ((void*)0);

 if (!dma_fence_add_callback(fence, &work->cb,
        amdgpu_display_flip_callback))
  return 1;

 dma_fence_put(fence);
 return 0;
}
