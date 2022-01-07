
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9322 {int dev; int regmap; } ;
struct drm_panel {int dummy; } ;


 int ILI9322_POW_CTRL ;
 int ILI9322_POW_CTRL_STANDBY ;
 int dev_err (int ,char*) ;
 struct ili9322* panel_to_ili9322 (struct drm_panel*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ili9322_disable(struct drm_panel *panel)
{
 struct ili9322 *ili = panel_to_ili9322(panel);
 int ret;

 ret = regmap_write(ili->regmap, ILI9322_POW_CTRL,
      ILI9322_POW_CTRL_STANDBY);
 if (ret) {
  dev_err(ili->dev, "unable to go to standby mode\n");
  return ret;
 }

 return 0;
}
