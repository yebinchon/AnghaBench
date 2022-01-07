
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct serdev_device {TYPE_1__ dev; } ;
struct gnss_serial {int speed; } ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node*,char*,int*) ;
 struct gnss_serial* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static int gnss_serial_parse_dt(struct serdev_device *serdev)
{
 struct gnss_serial *gserial = serdev_device_get_drvdata(serdev);
 struct device_node *node = serdev->dev.of_node;
 u32 speed = 4800;

 of_property_read_u32(node, "current-speed", &speed);

 gserial->speed = speed;

 return 0;
}
