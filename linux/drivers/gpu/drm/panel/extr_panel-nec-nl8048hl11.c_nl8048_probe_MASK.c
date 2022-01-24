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
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/ * dev; } ;
struct nl8048_panel {TYPE_1__ panel; struct spi_device* spi; int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct nl8048_panel* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  nl8048_funcs ; 
 int FUNC7 (struct nl8048_panel*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct nl8048_panel*) ; 
 int FUNC9 (struct spi_device*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct nl8048_panel *lcd;
	int ret;

	lcd = FUNC4(&spi->dev, sizeof(*lcd), GFP_KERNEL);
	if (!lcd)
		return -ENOMEM;

	FUNC8(spi, lcd);
	lcd->spi = spi;

	lcd->reset_gpio = FUNC3(&spi->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(lcd->reset_gpio)) {
		FUNC2(&spi->dev, "failed to parse reset gpio\n");
		return FUNC1(lcd->reset_gpio);
	}

	spi->mode = SPI_MODE_0;
	spi->bits_per_word = 32;

	ret = FUNC9(spi);
	if (ret < 0) {
		FUNC2(&spi->dev, "failed to setup SPI: %d\n", ret);
		return ret;
	}

	ret = FUNC7(lcd);
	if (ret < 0)
		return ret;

	FUNC6(&lcd->panel);
	lcd->panel.dev = &lcd->spi->dev;
	lcd->panel.funcs = &nl8048_funcs;

	return FUNC5(&lcd->panel);
}