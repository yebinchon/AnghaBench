
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_bridge {TYPE_1__* br_ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* enable_show ) (struct fpga_bridge*) ;} ;


 int sprintf (char*,char*,char*) ;
 int stub1 (struct fpga_bridge*) ;
 struct fpga_bridge* to_fpga_bridge (struct device*) ;

__attribute__((used)) static ssize_t state_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct fpga_bridge *bridge = to_fpga_bridge(dev);
 int enable = 1;

 if (bridge->br_ops && bridge->br_ops->enable_show)
  enable = bridge->br_ops->enable_show(bridge);

 return sprintf(buf, "%s\n", enable ? "enabled" : "disabled");
}
