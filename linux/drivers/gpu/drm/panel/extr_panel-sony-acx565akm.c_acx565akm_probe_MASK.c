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
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/ * dev; } ;
struct acx565akm_panel {scalar_t__ has_bc; TYPE_1__ panel; struct spi_device* spi; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  FUNC2 (struct acx565akm_panel*) ; 
 int FUNC3 (struct acx565akm_panel*) ; 
 int FUNC4 (struct acx565akm_panel*) ; 
 int /*<<< orphan*/  acx565akm_funcs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct acx565akm_panel* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct acx565akm_panel*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct acx565akm_panel *lcd;
	int ret;

	lcd = FUNC7(&spi->dev, sizeof(*lcd), GFP_KERNEL);
	if (!lcd)
		return -ENOMEM;

	FUNC11(spi, lcd);
	spi->mode = SPI_MODE_3;

	lcd->spi = spi;
	FUNC10(&lcd->mutex);

	lcd->reset_gpio = FUNC6(&spi->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(lcd->reset_gpio)) {
		FUNC5(&spi->dev, "failed to get reset GPIO\n");
		return FUNC1(lcd->reset_gpio);
	}

	ret = FUNC4(lcd);
	if (ret < 0) {
		FUNC5(&spi->dev, "panel detection failed\n");
		return ret;
	}

	if (lcd->has_bc) {
		ret = FUNC3(lcd);
		if (ret < 0)
			return ret;
	}

	FUNC9(&lcd->panel);
	lcd->panel.dev = &lcd->spi->dev;
	lcd->panel.funcs = &acx565akm_funcs;

	ret = FUNC8(&lcd->panel);
	if (ret < 0) {
		if (lcd->has_bc)
			FUNC2(lcd);
		return ret;
	}

	return 0;
}