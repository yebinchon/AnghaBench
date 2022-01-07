
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_execbuffer {int request; TYPE_1__* args; } ;
struct drm_syncobj {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {unsigned int num_cliprects; } ;


 int EINVAL ;
 unsigned int I915_EXEC_FENCE_WAIT ;
 int dma_fence_put (struct dma_fence*) ;
 struct dma_fence* drm_syncobj_fence_get (struct drm_syncobj*) ;
 int i915_request_await_dma_fence (int ,struct dma_fence*) ;
 struct drm_syncobj* ptr_unpack_bits (struct drm_syncobj*,unsigned int*,int) ;

__attribute__((used)) static int
await_fence_array(struct i915_execbuffer *eb,
    struct drm_syncobj **fences)
{
 const unsigned int nfences = eb->args->num_cliprects;
 unsigned int n;
 int err;

 for (n = 0; n < nfences; n++) {
  struct drm_syncobj *syncobj;
  struct dma_fence *fence;
  unsigned int flags;

  syncobj = ptr_unpack_bits(fences[n], &flags, 2);
  if (!(flags & I915_EXEC_FENCE_WAIT))
   continue;

  fence = drm_syncobj_fence_get(syncobj);
  if (!fence)
   return -EINVAL;

  err = i915_request_await_dma_fence(eb->request, fence);
  dma_fence_put(fence);
  if (err < 0)
   return err;
 }

 return 0;
}
