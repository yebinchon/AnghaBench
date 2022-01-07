
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_i2c_xport {int xport; } ;


 int rmi_unregister_transport_device (int *) ;

__attribute__((used)) static void rmi_i2c_unregister_transport(void *data)
{
 struct rmi_i2c_xport *rmi_i2c = data;

 rmi_unregister_transport_device(&rmi_i2c->xport);
}
