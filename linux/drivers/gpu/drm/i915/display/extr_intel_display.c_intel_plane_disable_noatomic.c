
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_plane_state {int dummy; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {int name; TYPE_1__ base; int state; } ;
struct intel_plane {size_t id; TYPE_2__ base; } ;
struct intel_crtc_state {scalar_t__* data_rate; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {int name; TYPE_3__ base; int state; } ;
struct intel_crtc {TYPE_4__ base; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ) ;
 size_t PLANE_PRIMARY ;
 int fixup_active_planes (struct intel_crtc_state*) ;
 int intel_disable_plane (struct intel_plane*,struct intel_crtc_state*) ;
 int intel_pre_disable_primary_noatomic (TYPE_4__*) ;
 int intel_set_plane_visible (struct intel_crtc_state*,struct intel_plane_state*,int) ;
 struct intel_crtc_state* to_intel_crtc_state (int ) ;
 struct intel_plane_state* to_intel_plane_state (int ) ;

__attribute__((used)) static void intel_plane_disable_noatomic(struct intel_crtc *crtc,
      struct intel_plane *plane)
{
 struct intel_crtc_state *crtc_state =
  to_intel_crtc_state(crtc->base.state);
 struct intel_plane_state *plane_state =
  to_intel_plane_state(plane->base.state);

 DRM_DEBUG_KMS("Disabling [PLANE:%d:%s] on [CRTC:%d:%s]\n",
        plane->base.base.id, plane->base.name,
        crtc->base.base.id, crtc->base.name);

 intel_set_plane_visible(crtc_state, plane_state, 0);
 fixup_active_planes(crtc_state);
 crtc_state->data_rate[plane->id] = 0;

 if (plane->id == PLANE_PRIMARY)
  intel_pre_disable_primary_noatomic(&crtc->base);

 intel_disable_plane(plane, crtc_state);
}
