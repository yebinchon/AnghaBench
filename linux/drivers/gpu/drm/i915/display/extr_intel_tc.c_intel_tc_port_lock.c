
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {int dummy; } ;


 int __intel_tc_port_lock (struct intel_digital_port*,int) ;

void intel_tc_port_lock(struct intel_digital_port *dig_port)
{
 __intel_tc_port_lock(dig_port, 1);
}
