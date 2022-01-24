#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pca954x {TYPE_2__* chip; struct i2c_client* client; scalar_t__ irq; int /*<<< orphan*/  idle_state; scalar_t__ last_chan; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_device_identity {scalar_t__ manufacturer_id; scalar_t__ part_id; int /*<<< orphan*/  die_revision; } ;
struct i2c_device_id {size_t driver_data; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ manufacturer_id; scalar_t__ part_id; } ;
struct TYPE_5__ {int nchans; scalar_t__ muxtype; TYPE_1__ id; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ I2C_DEVICE_ID_NONE ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int /*<<< orphan*/  MUX_IDLE_AS_IS ; 
 int /*<<< orphan*/  MUX_IDLE_DISCONNECT ; 
 int /*<<< orphan*/  PCA954X_MAX_NCHANS ; 
 int FUNC1 (struct gpio_desc*) ; 
 TYPE_2__* chips ; 
 int /*<<< orphan*/  dev_attr_idle_state ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 struct gpio_desc* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct pca954x*) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct i2c_client*,struct i2c_device_identity*) ; 
 int FUNC10 (struct i2c_mux_core*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct i2c_mux_core* FUNC11 (struct i2c_adapter*,struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pca954x* FUNC12 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,struct i2c_mux_core*) ; 
 scalar_t__ FUNC14 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (struct device*) ; 
 scalar_t__ FUNC16 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  pca954x_deselect_mux ; 
 int /*<<< orphan*/  pca954x_irq_handler ; 
 int FUNC18 (struct i2c_mux_core*) ; 
 scalar_t__ pca954x_ismux ; 
 int /*<<< orphan*/  pca954x_select_chan ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adap = client->adapter;
	struct device *dev = &client->dev;
	struct device_node *np = dev->of_node;
	bool idle_disconnect_dt;
	struct gpio_desc *gpio;
	struct i2c_mux_core *muxc;
	struct pca954x *data;
	int num;
	int ret;

	if (!FUNC8(adap, I2C_FUNC_SMBUS_BYTE))
		return -ENODEV;

	muxc = FUNC11(adap, dev, PCA954X_MAX_NCHANS, sizeof(*data), 0,
			     pca954x_select_chan, pca954x_deselect_mux);
	if (!muxc)
		return -ENOMEM;
	data = FUNC12(muxc);

	FUNC13(client, muxc);
	data->client = client;

	/* Reset the mux if a reset GPIO is specified. */
	gpio = FUNC5(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC0(gpio))
		return FUNC1(gpio);
	if (gpio) {
		FUNC19(1);
		FUNC7(gpio, 0);
		/* Give the chip some time to recover. */
		FUNC19(1);
	}

	data->chip = FUNC15(dev);
	if (!data->chip)
		data->chip = &chips[id->driver_data];

	if (data->chip->id.manufacturer_id != I2C_DEVICE_ID_NONE) {
		struct i2c_device_identity id;

		ret = FUNC9(client, &id);
		if (ret && ret != -EOPNOTSUPP)
			return ret;

		if (!ret &&
		    (id.manufacturer_id != data->chip->id.manufacturer_id ||
		     id.part_id != data->chip->id.part_id)) {
			FUNC3(dev, "unexpected device id %03x-%03x-%x\n",
				 id.manufacturer_id, id.part_id,
				 id.die_revision);
			return -ENODEV;
		}
	}

	/* Write the mux register at addr to verify
	 * that the mux is in fact present. This also
	 * initializes the mux to disconnected state.
	 */
	if (FUNC14(client, 0) < 0) {
		FUNC3(dev, "probe failed\n");
		return -ENODEV;
	}

	data->last_chan = 0;		   /* force the first selection */
	data->idle_state = MUX_IDLE_AS_IS;

	idle_disconnect_dt = np &&
		FUNC16(np, "i2c-mux-idle-disconnect");
	if (idle_disconnect_dt)
		data->idle_state = MUX_IDLE_DISCONNECT;

	ret = FUNC18(muxc);
	if (ret)
		goto fail_cleanup;

	/* Now create an adapter for each channel */
	for (num = 0; num < data->chip->nchans; num++) {
		ret = FUNC10(muxc, 0, num, 0);
		if (ret)
			goto fail_cleanup;
	}

	if (data->irq) {
		ret = FUNC6(dev, data->client->irq,
						NULL, pca954x_irq_handler,
						IRQF_ONESHOT | IRQF_SHARED,
						"pca954x", data);
		if (ret)
			goto fail_cleanup;
	}

	/*
	 * The attr probably isn't going to be needed in most cases,
	 * so don't fail completely on error.
	 */
	FUNC4(dev, &dev_attr_idle_state);

	FUNC2(dev, "registered %d multiplexed busses for I2C %s %s\n",
		 num, data->chip->muxtype == pca954x_ismux
				? "mux" : "switch", client->name);

	return 0;

fail_cleanup:
	FUNC17(muxc);
	return ret;
}