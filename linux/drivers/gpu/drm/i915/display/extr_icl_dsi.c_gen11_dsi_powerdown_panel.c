
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dsi {int dummy; } ;


 int MIPI_SEQ_ASSERT_RESET ;
 int MIPI_SEQ_DISPLAY_OFF ;
 int MIPI_SEQ_POWER_OFF ;
 struct intel_dsi* enc_to_intel_dsi (int *) ;
 int intel_dsi_vbt_exec_sequence (struct intel_dsi*,int ) ;
 int wait_for_cmds_dispatched_to_panel (struct intel_encoder*) ;

__attribute__((used)) static void gen11_dsi_powerdown_panel(struct intel_encoder *encoder)
{
 struct intel_dsi *intel_dsi = enc_to_intel_dsi(&encoder->base);

 intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_OFF);
 intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_ASSERT_RESET);
 intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_OFF);


 wait_for_cmds_dispatched_to_panel(encoder);
}
