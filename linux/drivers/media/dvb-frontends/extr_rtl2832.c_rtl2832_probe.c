
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct rtl2832_platform_data {int regmap; int pid_filter_ctrl; int pid_filter; int slave_ts_ctrl; int get_i2c_adapter; int get_dvb_frontend; } ;
struct TYPE_7__ {struct rtl2832_dev* demodulator_priv; int ops; } ;
struct TYPE_8__ {int reg_bits; int val_bits; int max_register; int cache_type; int num_ranges; struct regmap_range_cfg const* ranges; int volatile_reg; } ;
struct rtl2832_dev {int sleeping; int regmap; TYPE_1__ fe; TYPE_3__* muxc; TYPE_2__ regmap_config; int i2c_gate_work; struct rtl2832_platform_data* pdata; struct i2c_client* client; } ;
struct regmap_range_cfg {int selector_reg; int selector_mask; int window_len; int range_min; int range_max; int window_start; int selector_shift; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {struct rtl2832_platform_data* platform_data; } ;
struct i2c_client {TYPE_5__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_9__ {struct rtl2832_dev* priv; } ;


 int ARRAY_SIZE (struct regmap_range_cfg const*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_MUX_LOCKED ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REGCACHE_NONE ;
 int dev_dbg (TYPE_5__*,char*,...) ;
 int dev_info (TYPE_5__*,char*) ;
 int i2c_mux_add_adapter (TYPE_3__*,int ,int ,int ) ;
 TYPE_3__* i2c_mux_alloc (struct i2c_adapter*,int *,int,int ,int ,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rtl2832_dev*) ;
 int kfree (struct rtl2832_dev*) ;
 struct rtl2832_dev* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int regmap_bulk_read (int ,int,int *,int) ;
 int regmap_exit (int ) ;
 int regmap_init_i2c (struct i2c_client*,TYPE_2__*) ;
 int rtl2832_deselect ;
 int rtl2832_get_dvb_frontend ;
 int rtl2832_get_i2c_adapter ;
 int rtl2832_i2c_gate_work ;
 int rtl2832_ops ;
 int rtl2832_pid_filter ;
 int rtl2832_pid_filter_ctrl ;
 int rtl2832_select ;
 int rtl2832_slave_ts_ctrl ;
 int rtl2832_volatile_reg ;

__attribute__((used)) static int rtl2832_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct rtl2832_platform_data *pdata = client->dev.platform_data;
 struct i2c_adapter *i2c = client->adapter;
 struct rtl2832_dev *dev;
 int ret;
 u8 tmp;
 static const struct regmap_range_cfg regmap_range_cfg[] = {
  {
   .selector_reg = 0x00,
   .selector_mask = 0xff,
   .selector_shift = 0,
   .window_start = 0,
   .window_len = 0x100,
   .range_min = 0 * 0x100,
   .range_max = 5 * 0x100,
  },
 };

 dev_dbg(&client->dev, "\n");


 dev = kzalloc(sizeof(struct rtl2832_dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }


 i2c_set_clientdata(client, dev);
 dev->client = client;
 dev->pdata = client->dev.platform_data;
 dev->sleeping = 1;
 INIT_DELAYED_WORK(&dev->i2c_gate_work, rtl2832_i2c_gate_work);

 dev->regmap_config.reg_bits = 8,
 dev->regmap_config.val_bits = 8,
 dev->regmap_config.volatile_reg = rtl2832_volatile_reg,
 dev->regmap_config.max_register = 5 * 0x100,
 dev->regmap_config.ranges = regmap_range_cfg,
 dev->regmap_config.num_ranges = ARRAY_SIZE(regmap_range_cfg),
 dev->regmap_config.cache_type = REGCACHE_NONE,
 dev->regmap = regmap_init_i2c(client, &dev->regmap_config);
 if (IS_ERR(dev->regmap)) {
  ret = PTR_ERR(dev->regmap);
  goto err_kfree;
 }


 ret = regmap_bulk_read(dev->regmap, 0x000, &tmp, 1);
 if (ret)
  goto err_regmap_exit;


 dev->muxc = i2c_mux_alloc(i2c, &i2c->dev, 1, 0, I2C_MUX_LOCKED,
      rtl2832_select, rtl2832_deselect);
 if (!dev->muxc) {
  ret = -ENOMEM;
  goto err_regmap_exit;
 }
 dev->muxc->priv = dev;
 ret = i2c_mux_add_adapter(dev->muxc, 0, 0, 0);
 if (ret)
  goto err_regmap_exit;


 memcpy(&dev->fe.ops, &rtl2832_ops, sizeof(struct dvb_frontend_ops));
 dev->fe.demodulator_priv = dev;


 pdata->get_dvb_frontend = rtl2832_get_dvb_frontend;
 pdata->get_i2c_adapter = rtl2832_get_i2c_adapter;
 pdata->slave_ts_ctrl = rtl2832_slave_ts_ctrl;
 pdata->pid_filter = rtl2832_pid_filter;
 pdata->pid_filter_ctrl = rtl2832_pid_filter_ctrl;
 pdata->regmap = dev->regmap;

 dev_info(&client->dev, "Realtek RTL2832 successfully attached\n");
 return 0;
err_regmap_exit:
 regmap_exit(dev->regmap);
err_kfree:
 kfree(dev);
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
