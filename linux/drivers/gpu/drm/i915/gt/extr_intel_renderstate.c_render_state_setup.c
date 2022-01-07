
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct intel_renderstate_rodata {unsigned int batch_items; int* batch; unsigned int* reloc; } ;
struct intel_renderstate {int batch_size; unsigned int aux_offset; unsigned int aux_size; int obj; scalar_t__ batch_offset; TYPE_2__* vma; struct intel_renderstate_rodata* rodata; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int start; } ;
struct TYPE_4__ {TYPE_1__ node; } ;


 unsigned int ALIGN (unsigned int,int) ;
 unsigned int CACHELINE_DWORDS ;
 int DRM_ERROR (char*,unsigned int) ;
 int EINVAL ;
 int GEN9_MEDIA_POOL_ENABLE ;
 int GEN9_MEDIA_POOL_STATE ;
 scalar_t__ HAS_64BIT_RELOC (struct drm_i915_private*) ;
 scalar_t__ HAS_POOLED_EU (struct drm_i915_private*) ;
 int MI_BATCH_BUFFER_END ;
 int MI_NOOP ;
 int OUT_BATCH (int*,unsigned int,int) ;
 int drm_clflush_virt_range (int*,unsigned int) ;
 int i915_gem_object_finish_access (int ) ;
 int i915_gem_object_get_dirty_page (int ,int ) ;
 int i915_gem_object_prepare_write (int ,unsigned int*) ;
 scalar_t__ i915_ggtt_offset (TYPE_2__*) ;
 int* kmap_atomic (int ) ;
 int kunmap_atomic (int*) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int render_state_setup(struct intel_renderstate *so,
         struct drm_i915_private *i915)
{
 const struct intel_renderstate_rodata *rodata = so->rodata;
 unsigned int i = 0, reloc_index = 0;
 unsigned int needs_clflush;
 u32 *d;
 int ret;

 ret = i915_gem_object_prepare_write(so->obj, &needs_clflush);
 if (ret)
  return ret;

 d = kmap_atomic(i915_gem_object_get_dirty_page(so->obj, 0));

 while (i < rodata->batch_items) {
  u32 s = rodata->batch[i];

  if (i * 4 == rodata->reloc[reloc_index]) {
   u64 r = s + so->vma->node.start;
   s = lower_32_bits(r);
   if (HAS_64BIT_RELOC(i915)) {
    if (i + 1 >= rodata->batch_items ||
        rodata->batch[i + 1] != 0)
     goto err;

    d[i++] = s;
    s = upper_32_bits(r);
   }

   reloc_index++;
  }

  d[i++] = s;
 }

 if (rodata->reloc[reloc_index] != -1) {
  DRM_ERROR("only %d relocs resolved\n", reloc_index);
  goto err;
 }

 so->batch_offset = i915_ggtt_offset(so->vma);
 so->batch_size = rodata->batch_items * sizeof(u32);

 while (i % CACHELINE_DWORDS)
  OUT_BATCH(d, i, MI_NOOP);

 so->aux_offset = i * sizeof(u32);

 if (HAS_POOLED_EU(i915)) {
  u32 eu_pool_config = 0x00777000;

  OUT_BATCH(d, i, GEN9_MEDIA_POOL_STATE);
  OUT_BATCH(d, i, GEN9_MEDIA_POOL_ENABLE);
  OUT_BATCH(d, i, eu_pool_config);
  OUT_BATCH(d, i, 0);
  OUT_BATCH(d, i, 0);
  OUT_BATCH(d, i, 0);
 }

 OUT_BATCH(d, i, MI_BATCH_BUFFER_END);
 so->aux_size = i * sizeof(u32) - so->aux_offset;
 so->aux_offset += so->batch_offset;




 so->aux_size = ALIGN(so->aux_size, 8);

 if (needs_clflush)
  drm_clflush_virt_range(d, i * sizeof(u32));
 kunmap_atomic(d);

 ret = 0;
out:
 i915_gem_object_finish_access(so->obj);
 return ret;

err:
 kunmap_atomic(d);
 ret = -EINVAL;
 goto out;
}
