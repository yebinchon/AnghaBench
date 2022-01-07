
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ICH7_GPIO_SIZE ;
 int dev_dbg (struct device*,char*) ;
 int * gp_gpio_resource ;
 int nas_gpio_io_base ;
 int release_region (int ,int ) ;

__attribute__((used)) static void ich7_lpc_cleanup(struct device *dev)
{




 if (gp_gpio_resource) {
  dev_dbg(dev, ": Releasing GPIO I/O addresses\n");
  release_region(nas_gpio_io_base, ICH7_GPIO_SIZE);
  gp_gpio_resource = ((void*)0);
 }
}
