
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_execbuffer {TYPE_2__* request; TYPE_1__* args; } ;
struct drm_syncobj {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_4__ {struct dma_fence fence; } ;
struct TYPE_3__ {unsigned int num_cliprects; } ;


 unsigned int I915_EXEC_FENCE_SIGNAL ;
 int drm_syncobj_replace_fence (struct drm_syncobj*,struct dma_fence* const) ;
 struct drm_syncobj* ptr_unpack_bits (struct drm_syncobj*,unsigned int*,int) ;

__attribute__((used)) static void
signal_fence_array(struct i915_execbuffer *eb,
     struct drm_syncobj **fences)
{
 const unsigned int nfences = eb->args->num_cliprects;
 struct dma_fence * const fence = &eb->request->fence;
 unsigned int n;

 for (n = 0; n < nfences; n++) {
  struct drm_syncobj *syncobj;
  unsigned int flags;

  syncobj = ptr_unpack_bits(fences[n], &flags, 2);
  if (!(flags & I915_EXEC_FENCE_SIGNAL))
   continue;

  drm_syncobj_replace_fence(syncobj, fence);
 }
}
