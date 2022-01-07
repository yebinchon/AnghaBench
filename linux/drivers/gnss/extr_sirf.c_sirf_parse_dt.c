
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sirf_data {int speed; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct serdev_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node*,char*,int*) ;
 struct sirf_data* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static int sirf_parse_dt(struct serdev_device *serdev)
{
 struct sirf_data *data = serdev_device_get_drvdata(serdev);
 struct device_node *node = serdev->dev.of_node;
 u32 speed = 9600;

 of_property_read_u32(node, "current-speed", &speed);

 data->speed = speed;

 return 0;
}
