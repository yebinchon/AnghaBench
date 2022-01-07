
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct m88ds3103_platform_data {int ts_clk; int clk_out; int get_i2c_adapter; int get_dvb_frontend; int attach_in_use; int lnb_en_pol; int lnb_hv_pol; int agc; int envelope_mode; int agc_inv; int spec_inv; int ts_clk_pol; int ts_mode; int i2c_wr_max; int clk; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_14__ {int * release; TYPE_2__ info; } ;
struct TYPE_13__ {struct m88ds3103_dev* demodulator_priv; TYPE_4__ ops; } ;
struct TYPE_17__ {int reg_bits; int val_bits; struct m88ds3103_dev* lock_arg; } ;
struct TYPE_11__ {int ts_clk; int clock_out; int lnb_en_pol; int lnb_hv_pol; int agc; int envelope_mode; int agc_inv; int spec_inv; int ts_clk_pol; int ts_mode; int i2c_wr_max; int clock; } ;
struct m88ds3103_dev {unsigned int chip_id; TYPE_3__ fe; TYPE_5__* muxc; int regmap; TYPE_1__* cfg; TYPE_8__ regmap_config; TYPE_1__ config; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_16__ {struct m88ds3103_platform_data* platform_data; } ;
struct i2c_client {TYPE_6__ dev; int adapter; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_15__ {struct m88ds3103_dev* priv; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;





 int PTR_ERR (int ) ;
 int dev_dbg (TYPE_6__*,char*,int) ;
 int dev_err (TYPE_6__*,char*,int) ;
 int devm_regmap_init_i2c (struct i2c_client*,TYPE_8__*) ;
 int i2c_mux_add_adapter (TYPE_5__*,int ,int ,int ) ;
 TYPE_5__* i2c_mux_alloc (int ,TYPE_6__*,int,int ,int ,int ,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct m88ds3103_dev*) ;
 int kfree (struct m88ds3103_dev*) ;
 struct m88ds3103_dev* kzalloc (int,int ) ;
 int m88ds3103_get_dvb_frontend ;
 int m88ds3103_get_i2c_adapter ;
 int m88ds3103_ops ;
 int m88ds3103_select ;
 int m88ds3103_update_bits (struct m88ds3103_dev*,int,int,int) ;
 int memcpy (TYPE_4__*,int *,int) ;
 int regmap_read (int ,int,unsigned int*) ;
 int regmap_write (int ,int,unsigned int) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int m88ds3103_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct m88ds3103_dev *dev;
 struct m88ds3103_platform_data *pdata = client->dev.platform_data;
 int ret;
 unsigned int utmp;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  ret = -ENOMEM;
  goto err;
 }

 dev->client = client;
 dev->config.clock = pdata->clk;
 dev->config.i2c_wr_max = pdata->i2c_wr_max;
 dev->config.ts_mode = pdata->ts_mode;
 dev->config.ts_clk = pdata->ts_clk * 1000;
 dev->config.ts_clk_pol = pdata->ts_clk_pol;
 dev->config.spec_inv = pdata->spec_inv;
 dev->config.agc_inv = pdata->agc_inv;
 dev->config.clock_out = pdata->clk_out;
 dev->config.envelope_mode = pdata->envelope_mode;
 dev->config.agc = pdata->agc;
 dev->config.lnb_hv_pol = pdata->lnb_hv_pol;
 dev->config.lnb_en_pol = pdata->lnb_en_pol;
 dev->cfg = &dev->config;

 dev->regmap_config.reg_bits = 8,
 dev->regmap_config.val_bits = 8,
 dev->regmap_config.lock_arg = dev,
 dev->regmap = devm_regmap_init_i2c(client, &dev->regmap_config);
 if (IS_ERR(dev->regmap)) {
  ret = PTR_ERR(dev->regmap);
  goto err_kfree;
 }


 ret = regmap_read(dev->regmap, 0x00, &utmp);
 if (ret)
  goto err_kfree;

 dev->chip_id = utmp >> 1;
 dev_dbg(&client->dev, "chip_id=%02x\n", dev->chip_id);

 switch (dev->chip_id) {
 case 128:
 case 132:
  break;
 default:
  ret = -ENODEV;
  dev_err(&client->dev, "Unknown device. Chip_id=%02x\n", dev->chip_id);
  goto err_kfree;
 }

 switch (dev->cfg->clock_out) {
 case 131:
  utmp = 0x80;
  break;
 case 130:
  utmp = 0x00;
  break;
 case 129:
  utmp = 0x10;
  break;
 default:
  ret = -EINVAL;
  goto err_kfree;
 }

 if (!pdata->ts_clk) {
  ret = -EINVAL;
  goto err_kfree;
 }



 if (dev->chip_id == 128)
  utmp = 0x00;

 ret = regmap_write(dev->regmap, 0x29, utmp);
 if (ret)
  goto err_kfree;


 ret = m88ds3103_update_bits(dev, 0x08, 0x01, 0x00);
 if (ret)
  goto err_kfree;
 ret = m88ds3103_update_bits(dev, 0x04, 0x01, 0x01);
 if (ret)
  goto err_kfree;
 ret = m88ds3103_update_bits(dev, 0x23, 0x10, 0x10);
 if (ret)
  goto err_kfree;


 dev->muxc = i2c_mux_alloc(client->adapter, &client->dev, 1, 0, 0,
      m88ds3103_select, ((void*)0));
 if (!dev->muxc) {
  ret = -ENOMEM;
  goto err_kfree;
 }
 dev->muxc->priv = dev;
 ret = i2c_mux_add_adapter(dev->muxc, 0, 0, 0);
 if (ret)
  goto err_kfree;


 memcpy(&dev->fe.ops, &m88ds3103_ops, sizeof(struct dvb_frontend_ops));
 if (dev->chip_id == 128)
  strscpy(dev->fe.ops.info.name, "Montage Technology M88RS6000",
   sizeof(dev->fe.ops.info.name));
 if (!pdata->attach_in_use)
  dev->fe.ops.release = ((void*)0);
 dev->fe.demodulator_priv = dev;
 i2c_set_clientdata(client, dev);


 pdata->get_dvb_frontend = m88ds3103_get_dvb_frontend;
 pdata->get_i2c_adapter = m88ds3103_get_i2c_adapter;
 return 0;
err_kfree:
 kfree(dev);
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
