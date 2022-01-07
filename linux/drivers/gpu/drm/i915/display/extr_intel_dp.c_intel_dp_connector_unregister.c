
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int aux; } ;
struct drm_connector {int dummy; } ;


 int drm_dp_aux_unregister (int *) ;
 int drm_dp_cec_unregister_connector (int *) ;
 struct intel_dp* intel_attached_dp (struct drm_connector*) ;
 int intel_connector_unregister (struct drm_connector*) ;

__attribute__((used)) static void
intel_dp_connector_unregister(struct drm_connector *connector)
{
 struct intel_dp *intel_dp = intel_attached_dp(connector);

 drm_dp_cec_unregister_connector(&intel_dp->aux);
 drm_dp_aux_unregister(&intel_dp->aux);
 intel_connector_unregister(connector);
}
