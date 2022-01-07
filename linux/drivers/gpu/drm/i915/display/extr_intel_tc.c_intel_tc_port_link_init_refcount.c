
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {int tc_link_refcount; } ;


 int WARN_ON (int) ;

__attribute__((used)) static void
intel_tc_port_link_init_refcount(struct intel_digital_port *dig_port,
     int refcount)
{
 WARN_ON(dig_port->tc_link_refcount);
 dig_port->tc_link_refcount = refcount;
}
