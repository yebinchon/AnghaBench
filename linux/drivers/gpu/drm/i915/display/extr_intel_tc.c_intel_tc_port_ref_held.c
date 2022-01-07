
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {scalar_t__ tc_link_refcount; int tc_lock; } ;


 scalar_t__ mutex_is_locked (int *) ;

bool intel_tc_port_ref_held(struct intel_digital_port *dig_port)
{
 return mutex_is_locked(&dig_port->tc_lock) ||
        dig_port->tc_link_refcount;
}
