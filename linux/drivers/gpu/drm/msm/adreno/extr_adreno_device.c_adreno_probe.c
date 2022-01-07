
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int a3xx_ops ;
 int adreno_device_register_headless () ;
 int component_add (TYPE_1__*,int *) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;

__attribute__((used)) static int adreno_probe(struct platform_device *pdev)
{

 int ret;

 ret = component_add(&pdev->dev, &a3xx_ops);
 if (ret)
  return ret;

 if (of_device_is_compatible(pdev->dev.of_node, "amd,imageon"))
  adreno_device_register_headless();

 return 0;
}
