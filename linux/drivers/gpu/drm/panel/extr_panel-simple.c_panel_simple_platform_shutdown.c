
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int panel_simple_shutdown (int *) ;

__attribute__((used)) static void panel_simple_platform_shutdown(struct platform_device *pdev)
{
 panel_simple_shutdown(&pdev->dev);
}
