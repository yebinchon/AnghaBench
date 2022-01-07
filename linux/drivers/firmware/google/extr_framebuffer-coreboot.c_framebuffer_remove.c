
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct coreboot_device {int dev; } ;


 struct platform_device* dev_get_drvdata (int *) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static int framebuffer_remove(struct coreboot_device *dev)
{
 struct platform_device *pdev = dev_get_drvdata(&dev->dev);

 platform_device_unregister(pdev);

 return 0;
}
