
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {TYPE_1__* connector; } ;
typedef enum intel_output_type { ____Placeholder_intel_output_type } intel_output_type ;
struct TYPE_2__ {int connector_type; } ;





 int INTEL_OUTPUT_DP ;
 int INTEL_OUTPUT_EDP ;
 int INTEL_OUTPUT_HDMI ;
 int INTEL_OUTPUT_UNUSED ;
 int MISSING_CASE (int) ;

__attribute__((used)) static enum intel_output_type
intel_ddi_compute_output_type(struct intel_encoder *encoder,
         struct intel_crtc_state *crtc_state,
         struct drm_connector_state *conn_state)
{
 switch (conn_state->connector->connector_type) {
 case 129:
  return INTEL_OUTPUT_HDMI;
 case 128:
  return INTEL_OUTPUT_EDP;
 case 130:
  return INTEL_OUTPUT_DP;
 default:
  MISSING_CASE(conn_state->connector->connector_type);
  return INTEL_OUTPUT_UNUSED;
 }
}
