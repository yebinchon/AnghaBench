#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct TYPE_4__ {TYPE_3__* driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_board_info {scalar_t__ platform_data; int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;
struct drm_i2c_encoder_driver {int (* encoder_init ) (struct i2c_client*,struct drm_device*,struct drm_encoder_slave*) ;} ;
struct drm_encoder_slave {int /*<<< orphan*/  base; TYPE_2__* slave_funcs; struct i2c_client* bus_priv; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {struct module* owner; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_config ) (int /*<<< orphan*/ *,scalar_t__) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I2C_MODULE_PREFIX ; 
 struct i2c_client* FUNC0 (struct i2c_adapter*,struct i2c_board_info const*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct module*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,struct drm_device*,struct drm_encoder_slave*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct drm_i2c_encoder_driver* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct module*) ; 

int FUNC9(struct drm_device *dev,
			 struct drm_encoder_slave *encoder,
			 struct i2c_adapter *adap,
			 const struct i2c_board_info *info)
{
	struct module *module = NULL;
	struct i2c_client *client;
	struct drm_i2c_encoder_driver *encoder_drv;
	int err = 0;

	FUNC3("%s%s", I2C_MODULE_PREFIX, info->type);

	client = FUNC0(adap, info);
	if (!client) {
		err = -ENOMEM;
		goto fail;
	}

	if (!client->dev.driver) {
		err = -ENODEV;
		goto fail_unregister;
	}

	module = client->dev.driver->owner;
	if (!FUNC8(module)) {
		err = -ENODEV;
		goto fail_unregister;
	}

	encoder->bus_priv = client;

	encoder_drv = FUNC6(FUNC7(client->dev.driver));

	err = encoder_drv->encoder_init(client, dev, encoder);
	if (err)
		goto fail_unregister;

	if (info->platform_data)
		encoder->slave_funcs->set_config(&encoder->base,
						 info->platform_data);

	return 0;

fail_unregister:
	FUNC1(client);
	FUNC2(module);
fail:
	return err;
}