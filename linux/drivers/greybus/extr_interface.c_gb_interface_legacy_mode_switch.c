
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int disconnected; int dev; } ;


 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int gb_interface_deactivate (struct gb_interface*) ;
 int gb_interface_disable (struct gb_interface*) ;
 int gb_interface_enable (struct gb_interface*) ;

__attribute__((used)) static int gb_interface_legacy_mode_switch(struct gb_interface *intf)
{
 int ret;

 dev_info(&intf->dev, "legacy mode switch detected\n");


 intf->disconnected = 1;
 gb_interface_disable(intf);
 intf->disconnected = 0;

 ret = gb_interface_enable(intf);
 if (ret) {
  dev_err(&intf->dev, "failed to re-enable interface: %d\n", ret);
  gb_interface_deactivate(intf);
 }

 return ret;
}
