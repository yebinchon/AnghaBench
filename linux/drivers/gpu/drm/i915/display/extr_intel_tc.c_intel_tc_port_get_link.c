
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {int tc_link_refcount; } ;


 int __intel_tc_port_lock (struct intel_digital_port*,int) ;
 int intel_tc_port_unlock (struct intel_digital_port*) ;

void intel_tc_port_get_link(struct intel_digital_port *dig_port,
       int required_lanes)
{
 __intel_tc_port_lock(dig_port, required_lanes);
 dig_port->tc_link_refcount++;
 intel_tc_port_unlock(dig_port);
}
