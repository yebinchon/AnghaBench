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
struct sx9500_data {struct gpio_desc* gpiod_rst; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int /*<<< orphan*/  acpi_sx9500_gpios ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_desc*) ; 

__attribute__((used)) static void FUNC7(struct i2c_client *client,
			      struct sx9500_data *data)
{
	struct gpio_desc *gpiod_int;
	struct device *dev;
	int ret;

	if (!client)
		return;

	dev = &client->dev;

	ret = FUNC4(dev, acpi_sx9500_gpios);
	if (ret)
		FUNC1(dev, "Unable to add GPIO mapping table\n");

	if (client->irq <= 0) {
		gpiod_int = FUNC5(dev, "interrupt", GPIOD_IN);
		if (FUNC0(gpiod_int))
			FUNC2(dev, "gpio get irq failed\n");
		else
			client->irq = FUNC6(gpiod_int);
	}

	data->gpiod_rst = FUNC5(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC0(data->gpiod_rst)) {
		FUNC3(dev, "gpio get reset pin failed\n");
		data->gpiod_rst = NULL;
	}
}