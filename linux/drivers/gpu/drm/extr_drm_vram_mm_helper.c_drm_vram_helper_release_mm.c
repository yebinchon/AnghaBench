
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * vram_mm; } ;


 int drm_vram_mm_cleanup (int *) ;
 int kfree (int *) ;

void drm_vram_helper_release_mm(struct drm_device *dev)
{
 if (!dev->vram_mm)
  return;

 drm_vram_mm_cleanup(dev->vram_mm);
 kfree(dev->vram_mm);
 dev->vram_mm = ((void*)0);
}
