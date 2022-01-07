
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_vma {int dummy; } ;
struct TYPE_3__ {struct i915_vma* vma; struct i915_vma* vaddr; } ;
struct i915_perf_stream {TYPE_1__ oa_buffer; struct drm_i915_private* dev_priv; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
typedef struct i915_vma drm_i915_gem_object ;


 int BUILD_BUG_ON (int) ;
 int BUILD_BUG_ON_NOT_POWER_OF_2 (scalar_t__) ;
 int DRM_DEBUG_DRIVER (char*,int ,struct i915_vma*) ;
 int DRM_ERROR (char*) ;
 int ENODEV ;
 int I915_CACHE_LLC ;
 int I915_MAP_WB ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 scalar_t__ OA_BUFFER_SIZE ;
 int PTR_ERR (struct i915_vma*) ;
 scalar_t__ SZ_128K ;
 scalar_t__ SZ_16M ;
 scalar_t__ WARN_ON (struct i915_vma*) ;
 int __i915_vma_unpin (struct i915_vma*) ;
 struct i915_vma* i915_gem_object_create_shmem (struct drm_i915_private*,scalar_t__) ;
 struct i915_vma* i915_gem_object_ggtt_pin (struct i915_vma*,int *,int ,scalar_t__,int ) ;
 struct i915_vma* i915_gem_object_pin_map (struct i915_vma*,int ) ;
 int i915_gem_object_put (struct i915_vma*) ;
 int i915_gem_object_set_cache_coherency (struct i915_vma*,int ) ;
 int i915_ggtt_offset (struct i915_vma*) ;
 int i915_mutex_lock_interruptible (TYPE_2__*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int alloc_oa_buffer(struct i915_perf_stream *stream)
{
 struct drm_i915_gem_object *bo;
 struct drm_i915_private *dev_priv = stream->dev_priv;
 struct i915_vma *vma;
 int ret;

 if (WARN_ON(stream->oa_buffer.vma))
  return -ENODEV;

 ret = i915_mutex_lock_interruptible(&dev_priv->drm);
 if (ret)
  return ret;

 BUILD_BUG_ON_NOT_POWER_OF_2(OA_BUFFER_SIZE);
 BUILD_BUG_ON(OA_BUFFER_SIZE < SZ_128K || OA_BUFFER_SIZE > SZ_16M);

 bo = i915_gem_object_create_shmem(dev_priv, OA_BUFFER_SIZE);
 if (IS_ERR(bo)) {
  DRM_ERROR("Failed to allocate OA buffer\n");
  ret = PTR_ERR(bo);
  goto unlock;
 }

 i915_gem_object_set_cache_coherency(bo, I915_CACHE_LLC);


 vma = i915_gem_object_ggtt_pin(bo, ((void*)0), 0, SZ_16M, 0);
 if (IS_ERR(vma)) {
  ret = PTR_ERR(vma);
  goto err_unref;
 }
 stream->oa_buffer.vma = vma;

 stream->oa_buffer.vaddr =
  i915_gem_object_pin_map(bo, I915_MAP_WB);
 if (IS_ERR(stream->oa_buffer.vaddr)) {
  ret = PTR_ERR(stream->oa_buffer.vaddr);
  goto err_unpin;
 }

 DRM_DEBUG_DRIVER("OA Buffer initialized, gtt offset = 0x%x, vaddr = %p\n",
    i915_ggtt_offset(stream->oa_buffer.vma),
    stream->oa_buffer.vaddr);

 goto unlock;

err_unpin:
 __i915_vma_unpin(vma);

err_unref:
 i915_gem_object_put(bo);

 stream->oa_buffer.vaddr = ((void*)0);
 stream->oa_buffer.vma = ((void*)0);

unlock:
 mutex_unlock(&dev_priv->drm.struct_mutex);
 return ret;
}
