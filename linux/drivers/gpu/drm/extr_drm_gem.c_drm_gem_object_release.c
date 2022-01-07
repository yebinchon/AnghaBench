
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int _resv; scalar_t__ filp; int dma_buf; } ;


 int WARN_ON (int ) ;
 int dma_resv_fini (int *) ;
 int drm_gem_free_mmap_offset (struct drm_gem_object*) ;
 int fput (scalar_t__) ;

void
drm_gem_object_release(struct drm_gem_object *obj)
{
 WARN_ON(obj->dma_buf);

 if (obj->filp)
  fput(obj->filp);

 dma_resv_fini(&obj->_resv);
 drm_gem_free_mmap_offset(obj);
}
