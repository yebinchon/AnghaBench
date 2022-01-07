
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_port {int device; } ;


 int device_for_each_child (int *,int *,int ) ;
 int hsi_remove_client ;

void hsi_port_unregister_clients(struct hsi_port *port)
{
 device_for_each_child(&port->device, ((void*)0), hsi_remove_client);
}
