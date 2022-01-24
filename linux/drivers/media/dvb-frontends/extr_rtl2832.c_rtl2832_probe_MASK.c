#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rtl2832_platform_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  pid_filter_ctrl; int /*<<< orphan*/  pid_filter; int /*<<< orphan*/  slave_ts_ctrl; int /*<<< orphan*/  get_i2c_adapter; int /*<<< orphan*/  get_dvb_frontend; } ;
struct TYPE_7__ {struct rtl2832_dev* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct TYPE_8__ {int reg_bits; int val_bits; int max_register; int /*<<< orphan*/  cache_type; int /*<<< orphan*/  num_ranges; struct regmap_range_cfg const* ranges; int /*<<< orphan*/  volatile_reg; } ;
struct rtl2832_dev {int sleeping; int /*<<< orphan*/  regmap; TYPE_1__ fe; TYPE_3__* muxc; TYPE_2__ regmap_config; int /*<<< orphan*/  i2c_gate_work; struct rtl2832_platform_data* pdata; struct i2c_client* client; } ;
struct regmap_range_cfg {int selector_reg; int selector_mask; int window_len; int range_min; int range_max; int /*<<< orphan*/  window_start; int /*<<< orphan*/  selector_shift; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {struct rtl2832_platform_data* platform_data; } ;
struct i2c_client {TYPE_5__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_9__ {struct rtl2832_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regmap_range_cfg const*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_MUX_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGCACHE_NONE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (struct i2c_adapter*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct rtl2832_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl2832_dev*) ; 
 struct rtl2832_dev* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,TYPE_2__*) ; 
 int /*<<< orphan*/  rtl2832_deselect ; 
 int /*<<< orphan*/  rtl2832_get_dvb_frontend ; 
 int /*<<< orphan*/  rtl2832_get_i2c_adapter ; 
 int /*<<< orphan*/  rtl2832_i2c_gate_work ; 
 int /*<<< orphan*/  rtl2832_ops ; 
 int /*<<< orphan*/  rtl2832_pid_filter ; 
 int /*<<< orphan*/  rtl2832_pid_filter_ctrl ; 
 int /*<<< orphan*/  rtl2832_select ; 
 int /*<<< orphan*/  rtl2832_slave_ts_ctrl ; 
 int /*<<< orphan*/  rtl2832_volatile_reg ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct rtl2832_platform_data *pdata = client->dev.platform_data;
	struct i2c_adapter *i2c = client->adapter;
	struct rtl2832_dev *dev;
	int ret;
	u8 tmp;
	static const struct regmap_range_cfg regmap_range_cfg[] = {
		{
			.selector_reg     = 0x00,
			.selector_mask    = 0xff,
			.selector_shift   = 0,
			.window_start     = 0,
			.window_len       = 0x100,
			.range_min        = 0 * 0x100,
			.range_max        = 5 * 0x100,
		},
	};

	FUNC4(&client->dev, "\n");

	/* allocate memory for the internal state */
	dev = FUNC10(sizeof(struct rtl2832_dev), GFP_KERNEL);
	if (dev == NULL) {
		ret = -ENOMEM;
		goto err;
	}

	/* setup the state */
	FUNC8(client, dev);
	dev->client = client;
	dev->pdata = client->dev.platform_data;
	dev->sleeping = true;
	FUNC1(&dev->i2c_gate_work, rtl2832_i2c_gate_work);
	/* create regmap */
	dev->regmap_config.reg_bits =  8,
	dev->regmap_config.val_bits =  8,
	dev->regmap_config.volatile_reg = rtl2832_volatile_reg,
	dev->regmap_config.max_register = 5 * 0x100,
	dev->regmap_config.ranges = regmap_range_cfg,
	dev->regmap_config.num_ranges = FUNC0(regmap_range_cfg),
	dev->regmap_config.cache_type = REGCACHE_NONE,
	dev->regmap = FUNC14(client, &dev->regmap_config);
	if (FUNC2(dev->regmap)) {
		ret = FUNC3(dev->regmap);
		goto err_kfree;
	}

	/* check if the demod is there */
	ret = FUNC12(dev->regmap, 0x000, &tmp, 1);
	if (ret)
		goto err_regmap_exit;

	/* create muxed i2c adapter for demod tuner bus */
	dev->muxc = FUNC7(i2c, &i2c->dev, 1, 0, I2C_MUX_LOCKED,
				  rtl2832_select, rtl2832_deselect);
	if (!dev->muxc) {
		ret = -ENOMEM;
		goto err_regmap_exit;
	}
	dev->muxc->priv = dev;
	ret = FUNC6(dev->muxc, 0, 0, 0);
	if (ret)
		goto err_regmap_exit;

	/* create dvb_frontend */
	FUNC11(&dev->fe.ops, &rtl2832_ops, sizeof(struct dvb_frontend_ops));
	dev->fe.demodulator_priv = dev;

	/* setup callbacks */
	pdata->get_dvb_frontend = rtl2832_get_dvb_frontend;
	pdata->get_i2c_adapter = rtl2832_get_i2c_adapter;
	pdata->slave_ts_ctrl = rtl2832_slave_ts_ctrl;
	pdata->pid_filter = rtl2832_pid_filter;
	pdata->pid_filter_ctrl = rtl2832_pid_filter_ctrl;
	pdata->regmap = dev->regmap;

	FUNC5(&client->dev, "Realtek RTL2832 successfully attached\n");
	return 0;
err_regmap_exit:
	FUNC13(dev->regmap);
err_kfree:
	FUNC9(dev);
err:
	FUNC4(&client->dev, "failed=%d\n", ret);
	return ret;
}