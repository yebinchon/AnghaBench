
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int panel_simple_remove (int *) ;

__attribute__((used)) static int panel_simple_platform_remove(struct platform_device *pdev)
{
 return panel_simple_remove(&pdev->dev);
}
