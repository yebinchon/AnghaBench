
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;


 int drm_gem_mmap_obj (struct drm_gem_object*,int ,struct vm_area_struct*) ;
 int omap_gem_mmap_obj (struct drm_gem_object*,struct vm_area_struct*) ;
 int omap_gem_mmap_size (struct drm_gem_object*) ;

__attribute__((used)) static int omap_gem_dmabuf_mmap(struct dma_buf *buffer,
  struct vm_area_struct *vma)
{
 struct drm_gem_object *obj = buffer->priv;
 int ret = 0;

 ret = drm_gem_mmap_obj(obj, omap_gem_mmap_size(obj), vma);
 if (ret < 0)
  return ret;

 return omap_gem_mmap_obj(obj, vma);
}
