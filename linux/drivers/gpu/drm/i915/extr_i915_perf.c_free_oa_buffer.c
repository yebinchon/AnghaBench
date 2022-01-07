
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * vaddr; int vma; } ;
struct i915_perf_stream {TYPE_2__ oa_buffer; struct drm_i915_private* dev_priv; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int I915_VMA_RELEASE_MAP ;
 int i915_vma_unpin_and_release (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
free_oa_buffer(struct i915_perf_stream *stream)
{
 struct drm_i915_private *i915 = stream->dev_priv;

 mutex_lock(&i915->drm.struct_mutex);

 i915_vma_unpin_and_release(&stream->oa_buffer.vma,
       I915_VMA_RELEASE_MAP);

 mutex_unlock(&i915->drm.struct_mutex);

 stream->oa_buffer.vaddr = ((void*)0);
}
