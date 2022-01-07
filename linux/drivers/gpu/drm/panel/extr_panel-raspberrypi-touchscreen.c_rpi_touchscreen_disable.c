
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_touchscreen {int dummy; } ;
struct drm_panel {int dummy; } ;


 int REG_POWERON ;
 int REG_PWM ;
 struct rpi_touchscreen* panel_to_ts (struct drm_panel*) ;
 int rpi_touchscreen_i2c_write (struct rpi_touchscreen*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int rpi_touchscreen_disable(struct drm_panel *panel)
{
 struct rpi_touchscreen *ts = panel_to_ts(panel);

 rpi_touchscreen_i2c_write(ts, REG_PWM, 0);

 rpi_touchscreen_i2c_write(ts, REG_POWERON, 0);
 udelay(1);

 return 0;
}
