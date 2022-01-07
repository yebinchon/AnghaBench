
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_printer {int dummy; } ;
struct drm_gem_shmem_object {int vaddr; int vmap_use_count; int pages_use_count; } ;
struct drm_gem_object {int dummy; } ;


 int drm_printf_indent (struct drm_printer*,unsigned int,char*,int ) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object const*) ;

void drm_gem_shmem_print_info(struct drm_printer *p, unsigned int indent,
         const struct drm_gem_object *obj)
{
 const struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);

 drm_printf_indent(p, indent, "pages_use_count=%u\n", shmem->pages_use_count);
 drm_printf_indent(p, indent, "vmap_use_count=%u\n", shmem->vmap_use_count);
 drm_printf_indent(p, indent, "vaddr=%p\n", shmem->vaddr);
}
