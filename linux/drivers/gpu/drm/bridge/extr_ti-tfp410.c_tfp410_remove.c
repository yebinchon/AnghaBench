
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int tfp410_fini (int *) ;

__attribute__((used)) static int tfp410_remove(struct platform_device *pdev)
{
 return tfp410_fini(&pdev->dev);
}
