
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int dm_set_vblank (struct drm_crtc*,int) ;

__attribute__((used)) static int dm_enable_vblank(struct drm_crtc *crtc)
{
 return dm_set_vblank(crtc, 1);
}
