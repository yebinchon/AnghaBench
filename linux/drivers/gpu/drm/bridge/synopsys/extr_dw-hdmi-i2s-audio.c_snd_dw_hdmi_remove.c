
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 struct platform_device* dev_get_drvdata (int *) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static int snd_dw_hdmi_remove(struct platform_device *pdev)
{
 struct platform_device *platform = dev_get_drvdata(&pdev->dev);

 platform_device_unregister(platform);

 return 0;
}
