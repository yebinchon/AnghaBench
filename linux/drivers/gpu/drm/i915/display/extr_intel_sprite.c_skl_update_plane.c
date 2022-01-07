
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane_state {int ctl; scalar_t__ linked_plane; } ;
struct intel_plane {int dummy; } ;
struct intel_crtc_state {int dummy; } ;


 int skl_program_plane (struct intel_plane*,struct intel_crtc_state const*,struct intel_plane_state const*,int,int,int ) ;

__attribute__((used)) static void
skl_update_plane(struct intel_plane *plane,
   const struct intel_crtc_state *crtc_state,
   const struct intel_plane_state *plane_state)
{
 int color_plane = 0;

 if (plane_state->linked_plane) {

  color_plane = 1;
 }

 skl_program_plane(plane, crtc_state, plane_state,
     color_plane, 0, plane_state->ctl);
}
