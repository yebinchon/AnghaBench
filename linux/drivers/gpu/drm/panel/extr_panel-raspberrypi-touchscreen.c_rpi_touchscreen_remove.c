
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_touchscreen {int dsi; int base; } ;
struct i2c_client {int dummy; } ;


 int drm_panel_remove (int *) ;
 struct rpi_touchscreen* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (int ) ;
 int mipi_dsi_detach (int ) ;
 int mipi_dsi_device_unregister (int ) ;

__attribute__((used)) static int rpi_touchscreen_remove(struct i2c_client *i2c)
{
 struct rpi_touchscreen *ts = i2c_get_clientdata(i2c);

 mipi_dsi_detach(ts->dsi);

 drm_panel_remove(&ts->base);

 mipi_dsi_device_unregister(ts->dsi);
 kfree(ts->dsi);

 return 0;
}
