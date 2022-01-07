
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int wm97xx_remove (int *) ;

__attribute__((used)) static int wm97xx_mfd_remove(struct platform_device *pdev)
{
 return wm97xx_remove(&pdev->dev);
}
