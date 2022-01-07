
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;


 int glk_dsi_disable_mipi_io (struct intel_encoder*) ;
 int glk_dsi_enter_low_power_mode (struct intel_encoder*) ;

__attribute__((used)) static void glk_dsi_clear_device_ready(struct intel_encoder *encoder)
{
 glk_dsi_enter_low_power_mode(encoder);
 glk_dsi_disable_mipi_io(encoder);
}
