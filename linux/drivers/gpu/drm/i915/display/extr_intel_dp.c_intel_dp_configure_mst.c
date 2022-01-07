
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_encoder {int port; } ;
struct intel_dp {int can_mst; int is_mst; int mst_mgr; } ;
struct TYPE_4__ {struct intel_encoder base; } ;
struct TYPE_3__ {int enable_dp_mst; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ) ;
 TYPE_2__* dp_to_dig_port (struct intel_dp*) ;
 int drm_dp_mst_topology_mgr_set_mst (int *,int) ;
 TYPE_1__ i915_modparams ;
 int intel_dp_sink_can_mst (struct intel_dp*) ;
 int port_name (int ) ;
 int yesno (int) ;

__attribute__((used)) static void
intel_dp_configure_mst(struct intel_dp *intel_dp)
{
 struct intel_encoder *encoder =
  &dp_to_dig_port(intel_dp)->base;
 bool sink_can_mst = intel_dp_sink_can_mst(intel_dp);

 DRM_DEBUG_KMS("MST support? port %c: %s, sink: %s, modparam: %s\n",
        port_name(encoder->port), yesno(intel_dp->can_mst),
        yesno(sink_can_mst), yesno(i915_modparams.enable_dp_mst));

 if (!intel_dp->can_mst)
  return;

 intel_dp->is_mst = sink_can_mst &&
  i915_modparams.enable_dp_mst;

 drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
     intel_dp->is_mst);
}
