
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct intel_encoder {int base; } ;
struct intel_dp_mst_encoder {struct intel_digital_port* primary; } ;
struct intel_dp {int mst_mgr; } ;
struct intel_digital_port {struct intel_dp dp; } ;
struct intel_connector {int port; struct intel_encoder* encoder; } ;


 int drm_dp_mst_port_has_audio (int *,int ) ;
 struct intel_dp_mst_encoder* enc_to_mst (int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int yesno (int) ;

__attribute__((used)) static void intel_dp_mst_info(struct seq_file *m,
     struct intel_connector *intel_connector)
{
 struct intel_encoder *intel_encoder = intel_connector->encoder;
 struct intel_dp_mst_encoder *intel_mst =
  enc_to_mst(&intel_encoder->base);
 struct intel_digital_port *intel_dig_port = intel_mst->primary;
 struct intel_dp *intel_dp = &intel_dig_port->dp;
 bool has_audio = drm_dp_mst_port_has_audio(&intel_dp->mst_mgr,
     intel_connector->port);

 seq_printf(m, "\taudio support: %s\n", yesno(has_audio));
}
