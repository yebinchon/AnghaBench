
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_firmware {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;


 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct rpi_firmware* platform_get_drvdata (struct platform_device*) ;

struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
{
 struct platform_device *pdev = of_find_device_by_node(firmware_node);

 if (!pdev)
  return ((void*)0);

 return platform_get_drvdata(pdev);
}
