
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_plane_state {int dummy; } ;
struct intel_plane {int (* update_plane ) (struct intel_plane*,struct intel_crtc_state const*,struct intel_plane_state const*) ;int base; } ;
struct TYPE_2__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;


 int stub1 (struct intel_plane*,struct intel_crtc_state const*,struct intel_plane_state const*) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int trace_intel_update_plane (int *,struct intel_crtc*) ;

void intel_update_plane(struct intel_plane *plane,
   const struct intel_crtc_state *crtc_state,
   const struct intel_plane_state *plane_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);

 trace_intel_update_plane(&plane->base, crtc);
 plane->update_plane(plane, crtc_state, plane_state);
}
