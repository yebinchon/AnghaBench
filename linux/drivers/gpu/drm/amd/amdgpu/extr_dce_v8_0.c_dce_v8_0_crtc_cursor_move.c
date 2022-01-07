
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int dce_v8_0_cursor_move_locked (struct drm_crtc*,int,int) ;
 int dce_v8_0_lock_cursor (struct drm_crtc*,int) ;

__attribute__((used)) static int dce_v8_0_crtc_cursor_move(struct drm_crtc *crtc,
         int x, int y)
{
 int ret;

 dce_v8_0_lock_cursor(crtc, 1);
 ret = dce_v8_0_cursor_move_locked(crtc, x, y);
 dce_v8_0_lock_cursor(crtc, 0);

 return ret;
}
