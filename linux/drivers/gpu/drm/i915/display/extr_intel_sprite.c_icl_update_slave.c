
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane_state {int ctl; } ;
struct intel_plane {int dummy; } ;
struct intel_crtc_state {int dummy; } ;


 int PLANE_CTL_YUV420_Y_PLANE ;
 int skl_program_plane (struct intel_plane*,struct intel_crtc_state const*,struct intel_plane_state const*,int ,int,int) ;

__attribute__((used)) static void
icl_update_slave(struct intel_plane *plane,
   const struct intel_crtc_state *crtc_state,
   const struct intel_plane_state *plane_state)
{
 skl_program_plane(plane, crtc_state, plane_state, 0, 1,
     plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE);
}
