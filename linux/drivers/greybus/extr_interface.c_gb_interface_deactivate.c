
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int active; int mode_switch_completion; scalar_t__ mode_switch; } ;


 int complete (int *) ;
 int gb_interface_hibernate_link (struct gb_interface*) ;
 int gb_interface_refclk_set (struct gb_interface*,int) ;
 int gb_interface_route_destroy (struct gb_interface*) ;
 int gb_interface_unipro_set (struct gb_interface*,int) ;
 int gb_interface_vsys_set (struct gb_interface*,int) ;
 int trace_gb_interface_deactivate (struct gb_interface*) ;

void gb_interface_deactivate(struct gb_interface *intf)
{
 if (!intf->active)
  return;

 trace_gb_interface_deactivate(intf);


 if (intf->mode_switch)
  complete(&intf->mode_switch_completion);

 gb_interface_route_destroy(intf);
 gb_interface_hibernate_link(intf);
 gb_interface_unipro_set(intf, 0);
 gb_interface_refclk_set(intf, 0);
 gb_interface_vsys_set(intf, 0);

 intf->active = 0;
}
