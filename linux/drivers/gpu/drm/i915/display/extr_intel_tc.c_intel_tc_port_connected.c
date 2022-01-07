
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {int tc_mode; } ;


 int BIT (int ) ;
 int intel_tc_port_lock (struct intel_digital_port*) ;
 int intel_tc_port_unlock (struct intel_digital_port*) ;
 int tc_port_live_status_mask (struct intel_digital_port*) ;

bool intel_tc_port_connected(struct intel_digital_port *dig_port)
{
 bool is_connected;

 intel_tc_port_lock(dig_port);
 is_connected = tc_port_live_status_mask(dig_port) &
         BIT(dig_port->tc_mode);
 intel_tc_port_unlock(dig_port);

 return is_connected;
}
