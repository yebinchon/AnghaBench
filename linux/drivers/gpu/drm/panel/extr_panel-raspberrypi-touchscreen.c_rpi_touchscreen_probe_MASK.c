#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct rpi_touchscreen {TYPE_1__ base; int /*<<< orphan*/  dsi; struct i2c_client* i2c; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device_info {int /*<<< orphan*/ * node; int /*<<< orphan*/  channel; int /*<<< orphan*/  type; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ID ; 
 int /*<<< orphan*/  REG_POWERON ; 
 int /*<<< orphan*/  RPI_DSI_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct rpi_touchscreen* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct rpi_touchscreen*) ; 
 int /*<<< orphan*/  FUNC6 (struct mipi_dsi_host*,struct mipi_dsi_device_info*) ; 
 struct mipi_dsi_host* FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 int /*<<< orphan*/  rpi_touchscreen_funcs ; 
 int FUNC12 (struct rpi_touchscreen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rpi_touchscreen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *i2c,
				 const struct i2c_device_id *id)
{
	struct device *dev = &i2c->dev;
	struct rpi_touchscreen *ts;
	struct device_node *endpoint, *dsi_host_node;
	struct mipi_dsi_host *host;
	int ret, ver;
	struct mipi_dsi_device_info info = {
		.type = RPI_DSI_DRIVER_NAME,
		.channel = 0,
		.node = NULL,
	};

	ts = FUNC3(dev, sizeof(*ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	FUNC5(i2c, ts);

	ts->i2c = i2c;

	ver = FUNC12(ts, REG_ID);
	if (ver < 0) {
		FUNC2(dev, "Atmel I2C read failed: %d\n", ver);
		return -ENODEV;
	}

	switch (ver) {
	case 0xde: /* ver 1 */
	case 0xc3: /* ver 2 */
		break;
	default:
		FUNC2(dev, "Unknown Atmel firmware revision: 0x%02x\n", ver);
		return -ENODEV;
	}

	/* Turn off at boot, so we can cleanly sequence powering on. */
	FUNC13(ts, REG_POWERON, 0);

	/* Look up the DSI host.  It needs to probe before we do. */
	endpoint = FUNC8(dev->of_node, NULL);
	if (!endpoint)
		return -ENODEV;

	dsi_host_node = FUNC10(endpoint);
	if (!dsi_host_node)
		goto error;

	host = FUNC7(dsi_host_node);
	FUNC11(dsi_host_node);
	if (!host) {
		FUNC11(endpoint);
		return -EPROBE_DEFER;
	}

	info.node = FUNC9(endpoint);
	if (!info.node)
		goto error;

	FUNC11(endpoint);

	ts->dsi = FUNC6(host, &info);
	if (FUNC0(ts->dsi)) {
		FUNC2(dev, "DSI device registration failed: %ld\n",
			FUNC1(ts->dsi));
		return FUNC1(ts->dsi);
	}

	ts->base.dev = dev;
	ts->base.funcs = &rpi_touchscreen_funcs;

	/* This appears last, as it's what will unblock the DSI host
	 * driver's component bind function.
	 */
	ret = FUNC4(&ts->base);
	if (ret)
		return ret;

	return 0;

error:
	FUNC11(endpoint);
	return -ENODEV;
}