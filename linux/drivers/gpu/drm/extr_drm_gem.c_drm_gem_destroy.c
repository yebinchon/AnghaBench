
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * vma_offset_manager; } ;


 int drm_vma_offset_manager_destroy (int *) ;
 int kfree (int *) ;

void
drm_gem_destroy(struct drm_device *dev)
{

 drm_vma_offset_manager_destroy(dev->vma_offset_manager);
 kfree(dev->vma_offset_manager);
 dev->vma_offset_manager = ((void*)0);
}
