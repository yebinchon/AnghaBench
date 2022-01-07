
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_7__ {int size; int dev; TYPE_1__* filp; } ;
struct TYPE_6__ {int dirty; scalar_t__ madv; } ;
struct drm_i915_gem_object {TYPE_4__* phys_handle; TYPE_3__ base; TYPE_2__ mm; } ;
struct address_space {int dummy; } ;
struct TYPE_8__ {char* vaddr; } ;
struct TYPE_5__ {struct address_space* f_mapping; } ;


 scalar_t__ I915_MADV_WILLNEED ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_SIZE ;
 int __i915_gem_object_release_shmem (struct drm_i915_gem_object*,struct sg_table*,int) ;
 int drm_clflush_virt_range (char*,int) ;
 int drm_pci_free (int ,TYPE_4__*) ;
 int kfree (struct sg_table*) ;
 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 int mark_page_accessed (struct page*) ;
 int memcpy (char*,char*,int) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 int sg_free_table (struct sg_table*) ;
 struct page* shmem_read_mapping_page (struct address_space*,int) ;

__attribute__((used)) static void
i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
          struct sg_table *pages)
{
 __i915_gem_object_release_shmem(obj, pages, 0);

 if (obj->mm.dirty) {
  struct address_space *mapping = obj->base.filp->f_mapping;
  char *vaddr = obj->phys_handle->vaddr;
  int i;

  for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
   struct page *page;
   char *dst;

   page = shmem_read_mapping_page(mapping, i);
   if (IS_ERR(page))
    continue;

   dst = kmap_atomic(page);
   drm_clflush_virt_range(vaddr, PAGE_SIZE);
   memcpy(dst, vaddr, PAGE_SIZE);
   kunmap_atomic(dst);

   set_page_dirty(page);
   if (obj->mm.madv == I915_MADV_WILLNEED)
    mark_page_accessed(page);
   put_page(page);
   vaddr += PAGE_SIZE;
  }
  obj->mm.dirty = 0;
 }

 sg_free_table(pages);
 kfree(pages);

 drm_pci_free(obj->base.dev, obj->phys_handle);
}
