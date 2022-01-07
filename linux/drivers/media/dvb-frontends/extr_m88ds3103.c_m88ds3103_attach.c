
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m88ds3103_platform_data {int attach_in_use; struct dvb_frontend* (* get_dvb_frontend ) (struct i2c_client*) ;struct i2c_adapter* (* get_i2c_adapter ) (struct i2c_client*) ;int lnb_en_pol; int lnb_hv_pol; int envelope_mode; int clk_out; int agc_inv; int agc; int spec_inv; int ts_clk_pol; int ts_clk; int ts_mode; int i2c_wr_max; int clk; } ;
struct m88ds3103_config {int i2c_addr; int lnb_en_pol; int lnb_hv_pol; int envelope_mode; int clock_out; int agc_inv; int agc; int spec_inv; int ts_clk_pol; int ts_clk; int ts_mode; int i2c_wr_max; int clock; } ;
struct TYPE_2__ {int driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_board_info {struct m88ds3103_platform_data* platform_data; int addr; int type; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef int board_info ;


 int I2C_NAME_SIZE ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strscpy (int ,char*,int ) ;
 struct i2c_adapter* stub1 (struct i2c_client*) ;
 struct dvb_frontend* stub2 (struct i2c_client*) ;

struct dvb_frontend *m88ds3103_attach(const struct m88ds3103_config *cfg,
          struct i2c_adapter *i2c,
          struct i2c_adapter **tuner_i2c_adapter)
{
 struct i2c_client *client;
 struct i2c_board_info board_info;
 struct m88ds3103_platform_data pdata = {};

 pdata.clk = cfg->clock;
 pdata.i2c_wr_max = cfg->i2c_wr_max;
 pdata.ts_mode = cfg->ts_mode;
 pdata.ts_clk = cfg->ts_clk;
 pdata.ts_clk_pol = cfg->ts_clk_pol;
 pdata.spec_inv = cfg->spec_inv;
 pdata.agc = cfg->agc;
 pdata.agc_inv = cfg->agc_inv;
 pdata.clk_out = cfg->clock_out;
 pdata.envelope_mode = cfg->envelope_mode;
 pdata.lnb_hv_pol = cfg->lnb_hv_pol;
 pdata.lnb_en_pol = cfg->lnb_en_pol;
 pdata.attach_in_use = 1;

 memset(&board_info, 0, sizeof(board_info));
 strscpy(board_info.type, "m88ds3103", I2C_NAME_SIZE);
 board_info.addr = cfg->i2c_addr;
 board_info.platform_data = &pdata;
 client = i2c_new_device(i2c, &board_info);
 if (!client || !client->dev.driver)
  return ((void*)0);

 *tuner_i2c_adapter = pdata.get_i2c_adapter(client);
 return pdata.get_dvb_frontend(client);
}
