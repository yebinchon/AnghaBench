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
struct mma9551_data {int* irqs; TYPE_1__* client; } ;
struct iio_dev {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_IN ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int MMA9551_GPIO_COUNT ; 
 int /*<<< orphan*/  MMA9551_IRQ_NAME ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct gpio_desc* FUNC5 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int FUNC7 (struct gpio_desc*) ; 
 struct mma9551_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  mma9551_event_handler ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev)
{
	struct gpio_desc *gpio;
	int i, ret;
	struct mma9551_data *data = FUNC8(indio_dev);
	struct device *dev = &data->client->dev;

	for (i = 0; i < MMA9551_GPIO_COUNT; i++) {
		gpio = FUNC5(dev, NULL, i, GPIOD_IN);
		if (FUNC0(gpio)) {
			FUNC4(dev, "acpi gpio get index failed\n");
			return FUNC1(gpio);
		}

		ret = FUNC7(gpio);
		if (ret < 0)
			return ret;

		data->irqs[i] = ret;
		ret = FUNC6(dev, data->irqs[i],
				NULL, mma9551_event_handler,
				IRQF_TRIGGER_RISING | IRQF_ONESHOT,
				MMA9551_IRQ_NAME, indio_dev);
		if (ret < 0) {
			FUNC4(dev, "request irq %d failed\n", data->irqs[i]);
			return ret;
		}

		FUNC3(dev, "gpio resource, no:%d irq:%d\n",
			FUNC2(gpio), data->irqs[i]);
	}

	return 0;
}