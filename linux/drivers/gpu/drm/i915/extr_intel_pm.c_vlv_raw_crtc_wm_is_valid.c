
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int dummy; } ;


 int PLANE_CURSOR ;
 int PLANE_PRIMARY ;
 int PLANE_SPRITE0 ;
 int PLANE_SPRITE1 ;
 scalar_t__ vlv_raw_plane_wm_is_valid (struct intel_crtc_state const*,int ,int) ;

__attribute__((used)) static bool vlv_raw_crtc_wm_is_valid(const struct intel_crtc_state *crtc_state, int level)
{
 return vlv_raw_plane_wm_is_valid(crtc_state, PLANE_PRIMARY, level) &&
  vlv_raw_plane_wm_is_valid(crtc_state, PLANE_SPRITE0, level) &&
  vlv_raw_plane_wm_is_valid(crtc_state, PLANE_SPRITE1, level) &&
  vlv_raw_plane_wm_is_valid(crtc_state, PLANE_CURSOR, level);
}
