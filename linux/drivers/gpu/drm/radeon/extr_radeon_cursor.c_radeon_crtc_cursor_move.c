
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int radeon_cursor_move_locked (struct drm_crtc*,int,int) ;
 int radeon_lock_cursor (struct drm_crtc*,int) ;

int radeon_crtc_cursor_move(struct drm_crtc *crtc,
       int x, int y)
{
 int ret;

 radeon_lock_cursor(crtc, 1);
 ret = radeon_cursor_move_locked(crtc, x, y);
 radeon_lock_cursor(crtc, 0);

 return ret;
}
