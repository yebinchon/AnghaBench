
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_vram_object {int dummy; } ;


 int drm_gem_vram_cleanup (struct drm_gem_vram_object*) ;
 int kfree (struct drm_gem_vram_object*) ;

__attribute__((used)) static void drm_gem_vram_destroy(struct drm_gem_vram_object *gbo)
{
 drm_gem_vram_cleanup(gbo);
 kfree(gbo);
}
