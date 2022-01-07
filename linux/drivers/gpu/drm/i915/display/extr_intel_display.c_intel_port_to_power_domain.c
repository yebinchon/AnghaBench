
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum port { ____Placeholder_port } port ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 int MISSING_CASE (int) ;






 int POWER_DOMAIN_PORT_DDI_A_LANES ;
 int POWER_DOMAIN_PORT_DDI_B_LANES ;
 int POWER_DOMAIN_PORT_DDI_C_LANES ;
 int POWER_DOMAIN_PORT_DDI_D_LANES ;
 int POWER_DOMAIN_PORT_DDI_E_LANES ;
 int POWER_DOMAIN_PORT_DDI_F_LANES ;
 int POWER_DOMAIN_PORT_OTHER ;

enum intel_display_power_domain intel_port_to_power_domain(enum port port)
{
 switch (port) {
 case 133:
  return POWER_DOMAIN_PORT_DDI_A_LANES;
 case 132:
  return POWER_DOMAIN_PORT_DDI_B_LANES;
 case 131:
  return POWER_DOMAIN_PORT_DDI_C_LANES;
 case 130:
  return POWER_DOMAIN_PORT_DDI_D_LANES;
 case 129:
  return POWER_DOMAIN_PORT_DDI_E_LANES;
 case 128:
  return POWER_DOMAIN_PORT_DDI_F_LANES;
 default:
  MISSING_CASE(port);
  return POWER_DOMAIN_PORT_OTHER;
 }
}
