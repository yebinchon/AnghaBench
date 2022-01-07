
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6d16d0 {int supply; int reset_gpio; int dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int mipi_dsi_dcs_enter_sleep_mode (struct mipi_dsi_device*) ;
 struct s6d16d0* panel_to_s6d16d0 (struct drm_panel*) ;
 int regulator_disable (int ) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static int s6d16d0_unprepare(struct drm_panel *panel)
{
 struct s6d16d0 *s6 = panel_to_s6d16d0(panel);
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(s6->dev);
 int ret;


 ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
 if (ret) {
  DRM_DEV_ERROR(s6->dev, "failed to enter sleep mode (%d)\n",
         ret);
  return ret;
 }


 gpiod_set_value_cansleep(s6->reset_gpio, 1);
 regulator_disable(s6->supply);

 return 0;
}
