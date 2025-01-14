
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int start; } ;
struct i915_vma {int size; int * exec_flags; TYPE_2__ node; TYPE_1__* obj; } ;
struct TYPE_6__ {scalar_t__ use_64bit_reloc; } ;
struct i915_execbuffer {TYPE_3__ reloc_cache; int i915; } ;
struct drm_i915_gem_relocation_entry {int write_domain; int offset; int read_domains; scalar_t__ presumed_offset; int target_handle; } ;
struct TYPE_4__ {int cache_level; } ;


 int DBG_FORCE_RELOC ;
 int DRM_DEBUG (char*,int ,int,...) ;
 int EINVAL ;
 int ENOENT ;
 int EXEC_OBJECT_ASYNC ;
 int EXEC_OBJECT_WRITE ;
 int I915_GEM_DOMAIN_INSTRUCTION ;
 int I915_GEM_GPU_DOMAINS ;
 scalar_t__ IS_GEN (int ,int) ;
 int PIN_GLOBAL ;
 scalar_t__ WARN_ONCE (int,char*) ;
 struct i915_vma* eb_get_vma (struct i915_execbuffer*,int ) ;
 scalar_t__ gen8_canonical_addr (int ) ;
 int i915_vma_bind (struct i915_vma*,int ,int ) ;
 int relocate_entry (struct i915_vma*,struct drm_i915_gem_relocation_entry const*,struct i915_execbuffer*,struct i915_vma*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u64
eb_relocate_entry(struct i915_execbuffer *eb,
    struct i915_vma *vma,
    const struct drm_i915_gem_relocation_entry *reloc)
{
 struct i915_vma *target;
 int err;


 target = eb_get_vma(eb, reloc->target_handle);
 if (unlikely(!target))
  return -ENOENT;


 if (unlikely(reloc->write_domain & (reloc->write_domain - 1))) {
  DRM_DEBUG("reloc with multiple write domains: "
     "target %d offset %d "
     "read %08x write %08x",
     reloc->target_handle,
     (int) reloc->offset,
     reloc->read_domains,
     reloc->write_domain);
  return -EINVAL;
 }
 if (unlikely((reloc->write_domain | reloc->read_domains)
       & ~I915_GEM_GPU_DOMAINS)) {
  DRM_DEBUG("reloc with read/write non-GPU domains: "
     "target %d offset %d "
     "read %08x write %08x",
     reloc->target_handle,
     (int) reloc->offset,
     reloc->read_domains,
     reloc->write_domain);
  return -EINVAL;
 }

 if (reloc->write_domain) {
  *target->exec_flags |= EXEC_OBJECT_WRITE;







  if (reloc->write_domain == I915_GEM_DOMAIN_INSTRUCTION &&
      IS_GEN(eb->i915, 6)) {
   err = i915_vma_bind(target, target->obj->cache_level,
         PIN_GLOBAL);
   if (WARN_ONCE(err,
          "Unexpected failure to bind target VMA!"))
    return err;
  }
 }





 if (!DBG_FORCE_RELOC &&
     gen8_canonical_addr(target->node.start) == reloc->presumed_offset)
  return 0;


 if (unlikely(reloc->offset >
       vma->size - (eb->reloc_cache.use_64bit_reloc ? 8 : 4))) {
  DRM_DEBUG("Relocation beyond object bounds: "
     "target %d offset %d size %d.\n",
     reloc->target_handle,
     (int)reloc->offset,
     (int)vma->size);
  return -EINVAL;
 }
 if (unlikely(reloc->offset & 3)) {
  DRM_DEBUG("Relocation not 4-byte aligned: "
     "target %d offset %d.\n",
     reloc->target_handle,
     (int)reloc->offset);
  return -EINVAL;
 }
 *vma->exec_flags &= ~EXEC_OBJECT_ASYNC;


 return relocate_entry(vma, reloc, eb, target);
}
