
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nt39016 {int supply; int dev; int map; int reset_gpio; } ;
struct drm_panel {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int nt39016_panel_regs ;
 int regmap_multi_reg_write (int ,int ,int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 struct nt39016* to_nt39016 (struct drm_panel*) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int nt39016_prepare(struct drm_panel *drm_panel)
{
 struct nt39016 *panel = to_nt39016(drm_panel);
 int err;

 err = regulator_enable(panel->supply);
 if (err) {
  dev_err(panel->dev, "Failed to enable power supply: %d", err);
  return err;
 }







 gpiod_set_value_cansleep(panel->reset_gpio, 1);
 usleep_range(100, 1000);
 gpiod_set_value_cansleep(panel->reset_gpio, 0);
 udelay(2);


 err = regmap_multi_reg_write(panel->map, nt39016_panel_regs,
         ARRAY_SIZE(nt39016_panel_regs));
 if (err) {
  dev_err(panel->dev, "Failed to init registers: %d", err);
  goto err_disable_regulator;
 }

 return 0;

err_disable_regulator:
 regulator_disable(panel->supply);
 return err;
}
