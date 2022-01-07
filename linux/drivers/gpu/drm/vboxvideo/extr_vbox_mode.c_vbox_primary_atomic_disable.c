
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int src_x; int src_y; int fb; struct drm_crtc* crtc; } ;
struct drm_plane {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int vbox_crtc_set_base_and_mode (struct drm_crtc*,int ,int,int) ;

__attribute__((used)) static void vbox_primary_atomic_disable(struct drm_plane *plane,
     struct drm_plane_state *old_state)
{
 struct drm_crtc *crtc = old_state->crtc;


 vbox_crtc_set_base_and_mode(crtc, old_state->fb,
        old_state->src_x >> 16,
        old_state->src_y >> 16);
}
