
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x1; int y1; } ;
struct drm_plane_state {TYPE_1__ dst; } ;


 int drm_rect_debug_print (char*,TYPE_1__*,int) ;
 unsigned int drm_rect_height (TYPE_1__*) ;
 unsigned int drm_rect_width (TYPE_1__*) ;

__attribute__((used)) static bool check_crtc_eq(struct drm_plane_state *plane_state,
     int crtc_x, int crtc_y,
     unsigned crtc_w, unsigned crtc_h)
{
 if (plane_state->dst.x1 != crtc_x ||
     plane_state->dst.y1 != crtc_y ||
     drm_rect_width(&plane_state->dst) != crtc_w ||
     drm_rect_height(&plane_state->dst) != crtc_h) {
  drm_rect_debug_print("dst: ", &plane_state->dst, 0);

  return 0;
 }

 return 1;
}
