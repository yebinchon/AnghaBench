
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bochs_device {TYPE_1__* dev; } ;
struct TYPE_2__ {int vram_mm; } ;


 int drm_vram_helper_release_mm (TYPE_1__*) ;

void bochs_mm_fini(struct bochs_device *bochs)
{
 if (!bochs->dev->vram_mm)
  return;

 drm_vram_helper_release_mm(bochs->dev);
}
