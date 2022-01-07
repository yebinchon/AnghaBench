
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct intel_encoder {int base; } ;
struct intel_dp {int aux; int downstream_ports; int * dpcd; int has_audio; } ;
struct TYPE_4__ {scalar_t__ shim; } ;
struct TYPE_3__ {scalar_t__ connector_type; } ;
struct intel_connector {TYPE_2__ hdcp; int panel; TYPE_1__ base; struct intel_encoder* encoder; } ;


 size_t DP_DPCD_REV ;
 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 int drm_dp_downstream_debug (struct seq_file*,int *,int ,int *) ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 int intel_hdcp_info (struct seq_file*,struct intel_connector*) ;
 int intel_panel_info (struct seq_file*,int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int yesno (int ) ;

__attribute__((used)) static void intel_dp_info(struct seq_file *m,
     struct intel_connector *intel_connector)
{
 struct intel_encoder *intel_encoder = intel_connector->encoder;
 struct intel_dp *intel_dp = enc_to_intel_dp(&intel_encoder->base);

 seq_printf(m, "\tDPCD rev: %x\n", intel_dp->dpcd[DP_DPCD_REV]);
 seq_printf(m, "\taudio support: %s\n", yesno(intel_dp->has_audio));
 if (intel_connector->base.connector_type == DRM_MODE_CONNECTOR_eDP)
  intel_panel_info(m, &intel_connector->panel);

 drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
    &intel_dp->aux);
 if (intel_connector->hdcp.shim) {
  seq_puts(m, "\tHDCP version: ");
  intel_hdcp_info(m, intel_connector);
 }
}
