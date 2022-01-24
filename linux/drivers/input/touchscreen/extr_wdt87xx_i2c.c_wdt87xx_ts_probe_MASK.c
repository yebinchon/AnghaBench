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
struct wdt87xx_data {int /*<<< orphan*/  param; int /*<<< orphan*/  phys; int /*<<< orphan*/  fw_mutex; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; TYPE_1__* adapter; } ;
struct TYPE_2__ {int nr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wdt87xx_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wdt87xx_data*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct wdt87xx_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  wdt87xx_attr_group ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct wdt87xx_data*) ; 
 int /*<<< orphan*/  wdt87xx_ts_interrupt ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct wdt87xx_data *wdt;
	int error;

	FUNC0(&client->dev, "adapter=%d, client irq: %d\n",
		client->adapter->nr, client->irq);

	/* Check if the I2C function is ok in this adaptor */
	if (!FUNC5(client->adapter, I2C_FUNC_I2C))
		return -ENXIO;

	wdt = FUNC3(&client->dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->client = client;
	FUNC7(&wdt->fw_mutex);
	FUNC6(client, wdt);

	FUNC8(wdt->phys, sizeof(wdt->phys), "i2c-%u-%04x/input0",
		 client->adapter->nr, client->addr);

	error = FUNC9(client, &wdt->param);
	if (error)
		return error;

	error = FUNC10(wdt);
	if (error)
		return error;

	error = FUNC4(&client->dev, client->irq,
					  NULL, wdt87xx_ts_interrupt,
					  IRQF_ONESHOT,
					  client->name, wdt);
	if (error) {
		FUNC1(&client->dev, "request irq failed: %d\n", error);
		return error;
	}

	error = FUNC2(&client->dev, &wdt87xx_attr_group);
	if (error) {
		FUNC1(&client->dev, "create sysfs failed: %d\n", error);
		return error;
	}

	return 0;
}