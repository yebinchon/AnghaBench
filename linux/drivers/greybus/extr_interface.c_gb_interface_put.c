
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int dev; } ;


 int put_device (int *) ;

void gb_interface_put(struct gb_interface *intf)
{
 put_device(&intf->dev);
}
