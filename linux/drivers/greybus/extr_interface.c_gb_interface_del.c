
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int dev; } ;


 int dev_info (int *,char*) ;
 int device_del (int *) ;
 scalar_t__ device_is_registered (int *) ;
 int trace_gb_interface_del (struct gb_interface*) ;

void gb_interface_del(struct gb_interface *intf)
{
 if (device_is_registered(&intf->dev)) {
  trace_gb_interface_del(intf);

  device_del(&intf->dev);
  dev_info(&intf->dev, "Interface removed\n");
 }
}
