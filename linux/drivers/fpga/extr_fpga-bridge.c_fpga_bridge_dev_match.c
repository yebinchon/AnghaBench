
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {void const* parent; } ;



__attribute__((used)) static int fpga_bridge_dev_match(struct device *dev, const void *data)
{
 return dev->parent == data;
}
