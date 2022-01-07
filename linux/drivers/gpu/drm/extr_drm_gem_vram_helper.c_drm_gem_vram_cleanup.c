
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct drm_gem_vram_object {TYPE_1__ bo; } ;


 int drm_gem_object_release (int *) ;

__attribute__((used)) static void drm_gem_vram_cleanup(struct drm_gem_vram_object *gbo)
{




 drm_gem_object_release(&gbo->bo.base);
}
