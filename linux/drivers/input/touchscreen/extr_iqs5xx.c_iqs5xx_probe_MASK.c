#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iqs5xx_private {scalar_t__ input; int /*<<< orphan*/  lock; int /*<<< orphan*/  reset_gpio; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct iqs5xx_private* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iqs5xx_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct iqs5xx_private*) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  iqs5xx_attr_group ; 
 int FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  iqs5xx_irq ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct iqs5xx_private *iqs5xx;
	int error;

	iqs5xx = FUNC5(&client->dev, sizeof(*iqs5xx), GFP_KERNEL);
	if (!iqs5xx)
		return -ENOMEM;

	FUNC7(client, iqs5xx);
	iqs5xx->client = client;

	iqs5xx->reset_gpio = FUNC4(&client->dev,
					    "reset", GPIOD_OUT_LOW);
	if (FUNC0(iqs5xx->reset_gpio)) {
		error = FUNC1(iqs5xx->reset_gpio);
		FUNC2(&client->dev, "Failed to request GPIO: %d\n", error);
		return error;
	}

	FUNC11(&iqs5xx->lock);

	FUNC10(client);
	FUNC12(10000, 10100);

	error = FUNC9(client);
	if (error)
		return error;

	error = FUNC6(&client->dev, client->irq,
					  NULL, iqs5xx_irq, IRQF_ONESHOT,
					  client->name, iqs5xx);
	if (error) {
		FUNC2(&client->dev, "Failed to request IRQ: %d\n", error);
		return error;
	}

	error = FUNC3(&client->dev, &iqs5xx_attr_group);
	if (error) {
		FUNC2(&client->dev, "Failed to add attributes: %d\n", error);
		return error;
	}

	if (iqs5xx->input) {
		error = FUNC8(iqs5xx->input);
		if (error)
			FUNC2(&client->dev,
				"Failed to register device: %d\n",
				error);
	}

	return error;
}