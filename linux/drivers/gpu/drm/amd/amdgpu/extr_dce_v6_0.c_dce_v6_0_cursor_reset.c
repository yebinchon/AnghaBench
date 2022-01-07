
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct amdgpu_crtc {int cursor_y; int cursor_x; scalar_t__ cursor_bo; } ;


 int dce_v6_0_cursor_move_locked (struct drm_crtc*,int ,int ) ;
 int dce_v6_0_lock_cursor (struct drm_crtc*,int) ;
 int dce_v6_0_show_cursor (struct drm_crtc*) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_v6_0_cursor_reset(struct drm_crtc *crtc)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);

 if (amdgpu_crtc->cursor_bo) {
  dce_v6_0_lock_cursor(crtc, 1);

  dce_v6_0_cursor_move_locked(crtc, amdgpu_crtc->cursor_x,
         amdgpu_crtc->cursor_y);

  dce_v6_0_show_cursor(crtc);
  dce_v6_0_lock_cursor(crtc, 0);
 }
}
