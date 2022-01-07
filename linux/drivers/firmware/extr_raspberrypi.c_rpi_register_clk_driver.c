
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int platform_device_register_data (struct device*,char*,int,int *,int ) ;
 int rpi_clk ;

__attribute__((used)) static void rpi_register_clk_driver(struct device *dev)
{
 rpi_clk = platform_device_register_data(dev, "raspberrypi-clk",
      -1, ((void*)0), 0);
}
