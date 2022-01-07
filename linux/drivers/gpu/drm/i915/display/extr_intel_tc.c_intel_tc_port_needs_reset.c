
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {scalar_t__ tc_mode; } ;


 scalar_t__ intel_tc_port_get_target_mode (struct intel_digital_port*) ;

__attribute__((used)) static bool intel_tc_port_needs_reset(struct intel_digital_port *dig_port)
{
 return intel_tc_port_get_target_mode(dig_port) != dig_port->tc_mode;
}
