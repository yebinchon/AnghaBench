
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int * dma_buf; } ;


 int dma_buf_put (int *) ;

__attribute__((used)) static void drm_gem_object_exported_dma_buf_free(struct drm_gem_object *obj)
{

 if (obj->dma_buf) {
  dma_buf_put(obj->dma_buf);
  obj->dma_buf = ((void*)0);
 }
}
