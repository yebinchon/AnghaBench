#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; } ;
struct spi_device {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ngpio; struct device* parent; } ;
struct pisosr_gpio {int buffer_size; TYPE_1__ chip; int /*<<< orphan*/  lock; int /*<<< orphan*/  load_gpio; void* buffer; struct spi_device* spi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,struct pisosr_gpio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct pisosr_gpio*) ; 
 TYPE_1__ template_chip ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct pisosr_gpio *gpio;
	int ret;

	gpio = FUNC5(dev, sizeof(*gpio), GFP_KERNEL);
	if (!gpio)
		return -ENOMEM;

	FUNC9(spi, gpio);

	gpio->chip = template_chip;
	gpio->chip.parent = dev;
	FUNC8(dev->of_node, "ngpios", &gpio->chip.ngpio);

	gpio->spi = spi;

	gpio->buffer_size = FUNC0(gpio->chip.ngpio, 8);
	gpio->buffer = FUNC5(dev, gpio->buffer_size, GFP_KERNEL);
	if (!gpio->buffer)
		return -ENOMEM;

	gpio->load_gpio = FUNC4(dev, "load", GPIOD_OUT_LOW);
	if (FUNC1(gpio->load_gpio)) {
		ret = FUNC2(gpio->load_gpio);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "Unable to allocate load GPIO\n");
		return ret;
	}

	FUNC7(&gpio->lock);

	ret = FUNC6(&gpio->chip, gpio);
	if (ret < 0) {
		FUNC3(dev, "Unable to register gpiochip\n");
		return ret;
	}

	return 0;
}