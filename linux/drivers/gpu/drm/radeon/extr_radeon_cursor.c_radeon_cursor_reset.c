
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_crtc {int cursor_y; int cursor_x; scalar_t__ cursor_bo; } ;
struct drm_crtc {int dummy; } ;


 int radeon_cursor_move_locked (struct drm_crtc*,int ,int ) ;
 int radeon_lock_cursor (struct drm_crtc*,int) ;
 int radeon_show_cursor (struct drm_crtc*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

void radeon_cursor_reset(struct drm_crtc *crtc)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);

 if (radeon_crtc->cursor_bo) {
  radeon_lock_cursor(crtc, 1);

  radeon_cursor_move_locked(crtc, radeon_crtc->cursor_x,
       radeon_crtc->cursor_y);

  radeon_show_cursor(crtc);

  radeon_lock_cursor(crtc, 0);
 }
}
