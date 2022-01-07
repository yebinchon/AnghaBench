
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_module {int dummy; } ;
struct platform_device {int dev; } ;
struct panel_module {int info; int timings; struct backlight_device* backlight; } ;
struct backlight_device {int dev; } ;


 struct tilcdc_module* dev_get_platdata (int *) ;
 int display_timings_release (int ) ;
 int kfree (int ) ;
 int put_device (int *) ;
 int tilcdc_module_cleanup (struct tilcdc_module*) ;
 struct panel_module* to_panel_module (struct tilcdc_module*) ;

__attribute__((used)) static int panel_remove(struct platform_device *pdev)
{
 struct tilcdc_module *mod = dev_get_platdata(&pdev->dev);
 struct panel_module *panel_mod = to_panel_module(mod);
 struct backlight_device *backlight = panel_mod->backlight;

 if (backlight)
  put_device(&backlight->dev);

 display_timings_release(panel_mod->timings);

 tilcdc_module_cleanup(mod);
 kfree(panel_mod->info);

 return 0;
}
