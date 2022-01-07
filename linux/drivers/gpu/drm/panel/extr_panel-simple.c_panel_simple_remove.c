
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_simple {TYPE_1__* backlight; TYPE_2__* ddc; int base; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int dev; } ;


 struct panel_simple* dev_get_drvdata (struct device*) ;
 int drm_panel_remove (int *) ;
 int panel_simple_disable (int *) ;
 int panel_simple_unprepare (int *) ;
 int put_device (int *) ;

__attribute__((used)) static int panel_simple_remove(struct device *dev)
{
 struct panel_simple *panel = dev_get_drvdata(dev);

 drm_panel_remove(&panel->base);

 panel_simple_disable(&panel->base);
 panel_simple_unprepare(&panel->base);

 if (panel->ddc)
  put_device(&panel->ddc->dev);

 if (panel->backlight)
  put_device(&panel->backlight->dev);

 return 0;
}
