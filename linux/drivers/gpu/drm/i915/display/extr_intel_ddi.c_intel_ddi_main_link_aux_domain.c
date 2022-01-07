
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {scalar_t__ aux_ch; } ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 scalar_t__ AUX_CH_A ;
 int POWER_DOMAIN_AUX_IO_A ;
 int intel_aux_power_domain (struct intel_digital_port*) ;

__attribute__((used)) static inline enum intel_display_power_domain
intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
{
 return dig_port->aux_ch == AUX_CH_A ? POWER_DOMAIN_AUX_IO_A :
           intel_aux_power_domain(dig_port);
}
