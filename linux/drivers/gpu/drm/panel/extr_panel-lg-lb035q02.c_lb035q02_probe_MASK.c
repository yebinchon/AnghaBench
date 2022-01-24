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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/ * dev; } ;
struct lb035q02_device {TYPE_1__ panel; struct spi_device* spi; int /*<<< orphan*/  enable_gpio; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct lb035q02_device* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  lb035q02_funcs ; 
 int FUNC7 (struct lb035q02_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct lb035q02_device*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	struct lb035q02_device *lcd;
	int ret;

	lcd = FUNC4(&spi->dev, sizeof(*lcd), GFP_KERNEL);
	if (!lcd)
		return -ENOMEM;

	FUNC8(spi, lcd);
	lcd->spi = spi;

	lcd->enable_gpio = FUNC3(&spi->dev, "enable", GPIOD_OUT_LOW);
	if (FUNC0(lcd->enable_gpio)) {
		FUNC2(&spi->dev, "failed to parse enable gpio\n");
		return FUNC1(lcd->enable_gpio);
	}

	ret = FUNC7(lcd);
	if (ret < 0)
		return ret;

	FUNC6(&lcd->panel);
	lcd->panel.dev = &lcd->spi->dev;
	lcd->panel.funcs = &lb035q02_funcs;

	return FUNC5(&lcd->panel);
}