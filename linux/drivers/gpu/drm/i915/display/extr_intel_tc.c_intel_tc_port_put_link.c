
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {int tc_lock; int tc_link_refcount; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_tc_port_put_link(struct intel_digital_port *dig_port)
{
 mutex_lock(&dig_port->tc_lock);
 dig_port->tc_link_refcount--;
 mutex_unlock(&dig_port->tc_lock);
}
