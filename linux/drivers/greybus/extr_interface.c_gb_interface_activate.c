
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int type; int dev; } ;
typedef enum gb_interface_type { ____Placeholder_gb_interface_type } gb_interface_type ;


 int EIO ;


 int _gb_interface_activate (struct gb_interface*,int*) ;
 int _gb_interface_activate_es3_hack (struct gb_interface*,int*) ;
 int dev_err (int *,char*) ;
 int gb_interface_deactivate (struct gb_interface*) ;

int gb_interface_activate(struct gb_interface *intf)
{
 enum gb_interface_type type;
 int ret;

 switch (intf->type) {
 case 128:
 case 129:
  ret = _gb_interface_activate_es3_hack(intf, &type);
  break;
 default:
  ret = _gb_interface_activate(intf, &type);
 }


 if (intf->type != 128) {
  if (type != intf->type) {
   dev_err(&intf->dev, "failed to detect interface type\n");

   if (!ret)
    gb_interface_deactivate(intf);

   return -EIO;
  }
 } else {
  intf->type = type;
 }

 return ret;
}
