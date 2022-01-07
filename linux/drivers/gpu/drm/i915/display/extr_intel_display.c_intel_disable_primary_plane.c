
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_plane {int (* disable_plane ) (struct intel_plane*,struct intel_crtc_state const*) ;} ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_4__ {int primary; } ;
struct intel_crtc {TYPE_2__ base; } ;


 int stub1 (struct intel_plane*,struct intel_crtc_state const*) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static void intel_disable_primary_plane(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct intel_plane *plane = to_intel_plane(crtc->base.primary);

 plane->disable_plane(plane, crtc_state);
}
