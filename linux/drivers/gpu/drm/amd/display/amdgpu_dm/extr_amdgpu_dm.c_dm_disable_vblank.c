
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int dm_set_vblank (struct drm_crtc*,int) ;

__attribute__((used)) static void dm_disable_vblank(struct drm_crtc *crtc)
{
 dm_set_vblank(crtc, 0);
}
