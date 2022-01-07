
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct panel_lvds {TYPE_1__* backlight; int panel; } ;
struct TYPE_2__ {int dev; } ;


 struct panel_lvds* dev_get_drvdata (int *) ;
 int drm_panel_remove (int *) ;
 int panel_lvds_disable (int *) ;
 int put_device (int *) ;

__attribute__((used)) static int panel_lvds_remove(struct platform_device *pdev)
{
 struct panel_lvds *lvds = dev_get_drvdata(&pdev->dev);

 drm_panel_remove(&lvds->panel);

 panel_lvds_disable(&lvds->panel);

 if (lvds->backlight)
  put_device(&lvds->backlight->dev);

 return 0;
}
