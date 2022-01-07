
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seiko_panel {TYPE_1__* backlight; int base; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int dev; } ;


 struct seiko_panel* dev_get_drvdata (int *) ;
 int drm_panel_remove (int *) ;
 int put_device (int *) ;
 int seiko_panel_disable (int *) ;

__attribute__((used)) static int seiko_panel_remove(struct platform_device *pdev)
{
 struct seiko_panel *panel = dev_get_drvdata(&pdev->dev);

 drm_panel_remove(&panel->base);

 seiko_panel_disable(&panel->base);

 if (panel->backlight)
  put_device(&panel->backlight->dev);

 return 0;
}
