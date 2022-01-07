
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int active; scalar_t__ removed; scalar_t__ ejected; } ;
typedef enum gb_interface_type { ____Placeholder_gb_interface_type } gb_interface_type ;


 int ENODEV ;


 int GB_INTERFACE_TYPE_UNKNOWN ;
 int gb_interface_activate_operation (struct gb_interface*,int*) ;
 int gb_interface_hibernate_link (struct gb_interface*) ;
 int gb_interface_read_dme (struct gb_interface*) ;
 int gb_interface_refclk_set (struct gb_interface*,int) ;
 int gb_interface_route_create (struct gb_interface*) ;
 int gb_interface_unipro_set (struct gb_interface*,int) ;
 int gb_interface_vsys_set (struct gb_interface*,int) ;
 int trace_gb_interface_activate (struct gb_interface*) ;

__attribute__((used)) static int _gb_interface_activate(struct gb_interface *intf,
      enum gb_interface_type *type)
{
 int ret;

 *type = GB_INTERFACE_TYPE_UNKNOWN;

 if (intf->ejected || intf->removed)
  return -ENODEV;

 ret = gb_interface_vsys_set(intf, 1);
 if (ret)
  return ret;

 ret = gb_interface_refclk_set(intf, 1);
 if (ret)
  goto err_vsys_disable;

 ret = gb_interface_unipro_set(intf, 1);
 if (ret)
  goto err_refclk_disable;

 ret = gb_interface_activate_operation(intf, type);
 if (ret) {
  switch (*type) {
  case 128:
  case 129:
   goto err_hibernate_link;
  default:
   goto err_unipro_disable;
  }
 }

 ret = gb_interface_read_dme(intf);
 if (ret)
  goto err_hibernate_link;

 ret = gb_interface_route_create(intf);
 if (ret)
  goto err_hibernate_link;

 intf->active = 1;

 trace_gb_interface_activate(intf);

 return 0;

err_hibernate_link:
 gb_interface_hibernate_link(intf);
err_unipro_disable:
 gb_interface_unipro_set(intf, 0);
err_refclk_disable:
 gb_interface_refclk_set(intf, 0);
err_vsys_disable:
 gb_interface_vsys_set(intf, 0);

 return ret;
}
