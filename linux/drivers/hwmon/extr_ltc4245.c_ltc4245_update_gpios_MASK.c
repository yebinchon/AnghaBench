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
typedef  int u8 ;
struct ltc4245_data {int* cregs; int /*<<< orphan*/ * gpios; int /*<<< orphan*/ * vregs; scalar_t__ last_updated; int /*<<< orphan*/  use_extra_gpios; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int HZ ; 
 size_t LTC4245_GPIO ; 
 int LTC4245_GPIOADC ; 
 struct ltc4245_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,size_t,int) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct ltc4245_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	u8 gpio_curr, gpio_next, gpio_reg;
	int i;

	/* no extra gpio support, we're basically done */
	if (!data->use_extra_gpios) {
		data->gpios[0] = data->vregs[LTC4245_GPIOADC - 0x10];
		return;
	}

	/*
	 * If the last reading was too long ago, then we mark all old GPIO
	 * readings as stale by setting them to -EAGAIN
	 */
	if (FUNC3(jiffies, data->last_updated + 5 * HZ)) {
		for (i = 0; i < FUNC0(data->gpios); i++)
			data->gpios[i] = -EAGAIN;
	}

	/*
	 * Get the current GPIO pin
	 *
	 * The datasheet calls these GPIO[1-3], but we'll calculate the zero
	 * based array index instead, and call them GPIO[0-2]. This is much
	 * easier to think about.
	 */
	gpio_curr = (data->cregs[LTC4245_GPIO] & 0xc0) >> 6;
	if (gpio_curr > 0)
		gpio_curr -= 1;

	/* Read the GPIO voltage from the GPIOADC register */
	data->gpios[gpio_curr] = data->vregs[LTC4245_GPIOADC - 0x10];

	/* Find the next GPIO pin to read */
	gpio_next = (gpio_curr + 1) % FUNC0(data->gpios);

	/*
	 * Calculate the correct setting for the GPIO register so it will
	 * sample the next GPIO pin
	 */
	gpio_reg = (data->cregs[LTC4245_GPIO] & 0x3f) | ((gpio_next + 1) << 6);

	/* Update the GPIO register */
	FUNC2(client, LTC4245_GPIO, gpio_reg);

	/* Update saved data */
	data->cregs[LTC4245_GPIO] = gpio_reg;
}