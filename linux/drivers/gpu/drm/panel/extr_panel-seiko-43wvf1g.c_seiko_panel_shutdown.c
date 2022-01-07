
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seiko_panel {int base; } ;
struct platform_device {int dev; } ;


 struct seiko_panel* dev_get_drvdata (int *) ;
 int seiko_panel_disable (int *) ;

__attribute__((used)) static void seiko_panel_shutdown(struct platform_device *pdev)
{
 struct seiko_panel *panel = dev_get_drvdata(&pdev->dev);

 seiko_panel_disable(&panel->base);
}
