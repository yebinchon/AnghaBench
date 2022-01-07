
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_bridge {int dummy; } ;
struct device {int dummy; } ;


 int fpga_bridge_free (struct fpga_bridge*) ;

__attribute__((used)) static void devm_fpga_bridge_release(struct device *dev, void *res)
{
 struct fpga_bridge *bridge = *(struct fpga_bridge **)res;

 fpga_bridge_free(bridge);
}
