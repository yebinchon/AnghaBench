
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_board_info {struct cxd2820r_platform_data* platform_data; int addr; int type; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;
struct cxd2820r_platform_data {int** gpio_chip_base; int attach_in_use; struct dvb_frontend* (* get_dvb_frontend ) (struct i2c_client*) ;int spec_inv; int if_agc_polarity; int ts_clk_inv; int ts_mode; } ;
struct cxd2820r_config {int i2c_address; int spec_inv; int if_agc_polarity; int ts_clock_inv; int ts_mode; } ;
typedef int board_info ;


 int I2C_NAME_SIZE ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strscpy (int ,char*,int ) ;
 struct dvb_frontend* stub1 (struct i2c_client*) ;

struct dvb_frontend *cxd2820r_attach(const struct cxd2820r_config *config,
         struct i2c_adapter *adapter,
         int *gpio_chip_base)
{
 struct i2c_client *client;
 struct i2c_board_info board_info;
 struct cxd2820r_platform_data pdata;

 pdata.ts_mode = config->ts_mode;
 pdata.ts_clk_inv = config->ts_clock_inv;
 pdata.if_agc_polarity = config->if_agc_polarity;
 pdata.spec_inv = config->spec_inv;
 pdata.gpio_chip_base = &gpio_chip_base;
 pdata.attach_in_use = 1;

 memset(&board_info, 0, sizeof(board_info));
 strscpy(board_info.type, "cxd2820r", I2C_NAME_SIZE);
 board_info.addr = config->i2c_address;
 board_info.platform_data = &pdata;
 client = i2c_new_device(adapter, &board_info);
 if (!client || !client->dev.driver)
  return ((void*)0);

 return pdata.get_dvb_frontend(client);
}
