
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reloc_cache {unsigned long page; int vaddr; } ;
struct drm_i915_gem_object {int dummy; } ;


 int KMAP ;
 void* reloc_iomap (struct drm_i915_gem_object*,struct reloc_cache*,unsigned long) ;
 void* reloc_kmap (struct drm_i915_gem_object*,struct reloc_cache*,unsigned long) ;
 void* unmask_page (int) ;

__attribute__((used)) static void *reloc_vaddr(struct drm_i915_gem_object *obj,
    struct reloc_cache *cache,
    unsigned long page)
{
 void *vaddr;

 if (cache->page == page) {
  vaddr = unmask_page(cache->vaddr);
 } else {
  vaddr = ((void*)0);
  if ((cache->vaddr & KMAP) == 0)
   vaddr = reloc_iomap(obj, cache, page);
  if (!vaddr)
   vaddr = reloc_kmap(obj, cache, page);
 }

 return vaddr;
}
