
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_olinuxino {int panel; } ;
struct i2c_client {int dummy; } ;


 int drm_panel_remove (int *) ;
 struct lcd_olinuxino* i2c_get_clientdata (struct i2c_client*) ;
 int lcd_olinuxino_disable (int *) ;
 int lcd_olinuxino_unprepare (int *) ;

__attribute__((used)) static int lcd_olinuxino_remove(struct i2c_client *client)
{
 struct lcd_olinuxino *panel = i2c_get_clientdata(client);

 drm_panel_remove(&panel->panel);

 lcd_olinuxino_disable(&panel->panel);
 lcd_olinuxino_unprepare(&panel->panel);

 return 0;
}
