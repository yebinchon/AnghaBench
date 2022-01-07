
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {size_t size; int vma_node; int _resv; int * resv; scalar_t__ handle_count; int refcount; int * filp; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int dma_resv_init (int *) ;
 int drm_vma_node_reset (int *) ;
 int kref_init (int *) ;

void drm_gem_private_object_init(struct drm_device *dev,
     struct drm_gem_object *obj, size_t size)
{
 BUG_ON((size & (PAGE_SIZE - 1)) != 0);

 obj->dev = dev;
 obj->filp = ((void*)0);

 kref_init(&obj->refcount);
 obj->handle_count = 0;
 obj->size = size;
 dma_resv_init(&obj->_resv);
 if (!obj->resv)
  obj->resv = &obj->_resv;

 drm_vma_node_reset(&obj->vma_node);
}
