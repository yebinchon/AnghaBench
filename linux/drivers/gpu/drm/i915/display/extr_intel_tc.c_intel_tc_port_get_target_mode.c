
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_digital_port {scalar_t__ tc_legacy_port; } ;
typedef enum tc_port_mode { ____Placeholder_tc_port_mode } tc_port_mode ;


 int TC_PORT_LEGACY ;
 int TC_PORT_TBT_ALT ;
 int fls (scalar_t__) ;
 scalar_t__ icl_tc_phy_status_complete (struct intel_digital_port*) ;
 scalar_t__ tc_port_live_status_mask (struct intel_digital_port*) ;

__attribute__((used)) static enum tc_port_mode
intel_tc_port_get_target_mode(struct intel_digital_port *dig_port)
{
 u32 live_status_mask = tc_port_live_status_mask(dig_port);

 if (live_status_mask)
  return fls(live_status_mask) - 1;

 return icl_tc_phy_status_complete(dig_port) &&
        dig_port->tc_legacy_port ? TC_PORT_LEGACY :
       TC_PORT_TBT_ALT;
}
