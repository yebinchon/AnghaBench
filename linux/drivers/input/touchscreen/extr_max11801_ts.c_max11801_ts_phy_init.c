
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max11801_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int APERTURE_CONF_REG ;
 int AUTO_MODE_TIME_CONF_REG ;
 int MESURE_AVER_CONF_REG ;
 int OP_MODE_CONF_REG ;
 int PANEL_SETUPTIME_CONF_REG ;
 int TOUCH_DETECT_PULLUP_CONF_REG ;
 int max11801_write_reg (struct i2c_client*,int ,int) ;

__attribute__((used)) static void max11801_ts_phy_init(struct max11801_data *data)
{
 struct i2c_client *client = data->client;


 max11801_write_reg(client, MESURE_AVER_CONF_REG, 0xff);

 max11801_write_reg(client, PANEL_SETUPTIME_CONF_REG, 0x11);

 max11801_write_reg(client, TOUCH_DETECT_PULLUP_CONF_REG, 0x10);

 max11801_write_reg(client, AUTO_MODE_TIME_CONF_REG, 0xaa);

 max11801_write_reg(client, APERTURE_CONF_REG, 0x33);

 max11801_write_reg(client, OP_MODE_CONF_REG, 0x36);
}
