
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dp_mst_encoder {struct intel_digital_port* primary; } ;
struct intel_digital_port {int base; } ;
struct intel_crtc_state {int dummy; } ;


 struct intel_dp_mst_encoder* enc_to_mst (int *) ;
 int intel_ddi_get_config (int *,struct intel_crtc_state*) ;

__attribute__((used)) static void intel_dp_mst_enc_get_config(struct intel_encoder *encoder,
     struct intel_crtc_state *pipe_config)
{
 struct intel_dp_mst_encoder *intel_mst = enc_to_mst(&encoder->base);
 struct intel_digital_port *intel_dig_port = intel_mst->primary;

 intel_ddi_get_config(&intel_dig_port->base, pipe_config);
}
