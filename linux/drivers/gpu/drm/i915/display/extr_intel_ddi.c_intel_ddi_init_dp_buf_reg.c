
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dp {int DP; int lane_count; } ;
struct intel_digital_port {int saved_port_bits; } ;


 int DDI_BUF_CTL_ENABLE ;
 int DDI_BUF_TRANS_SELECT (int ) ;
 int DDI_PORT_WIDTH (int ) ;
 struct intel_digital_port* enc_to_dig_port (int *) ;
 struct intel_dp* enc_to_intel_dp (int *) ;

__attribute__((used)) static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
 struct intel_digital_port *intel_dig_port =
  enc_to_dig_port(&encoder->base);

 intel_dp->DP = intel_dig_port->saved_port_bits |
  DDI_BUF_CTL_ENABLE | DDI_BUF_TRANS_SELECT(0);
 intel_dp->DP |= DDI_PORT_WIDTH(intel_dp->lane_count);
}
