
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 struct sp_device* dev_get_drvdata (struct device*) ;
 int dev_notice (struct device*,char*) ;
 int sp_destroy (struct sp_device*) ;

__attribute__((used)) static int sp_platform_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct sp_device *sp = dev_get_drvdata(dev);

 sp_destroy(sp);

 dev_notice(dev, "disabled\n");

 return 0;
}
