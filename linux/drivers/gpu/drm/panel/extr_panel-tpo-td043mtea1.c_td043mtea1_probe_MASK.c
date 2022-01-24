#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * funcs; TYPE_3__* dev; } ;
struct td043mtea1_panel {TYPE_1__ panel; struct spi_device* spi; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  vcc_reg; int /*<<< orphan*/  gamma; int /*<<< orphan*/  mode; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct spi_device {int bits_per_word; TYPE_3__ dev; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  TPO_R02_MODE_800x480 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 struct td043mtea1_panel* FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct td043mtea1_panel*) ; 
 int FUNC10 (struct spi_device*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  td043mtea1_attr_group ; 
 int /*<<< orphan*/  td043mtea1_def_gamma ; 
 int /*<<< orphan*/  td043mtea1_funcs ; 

__attribute__((used)) static int FUNC13(struct spi_device *spi)
{
	struct td043mtea1_panel *lcd;
	int ret;

	lcd = FUNC4(&spi->dev, sizeof(*lcd), GFP_KERNEL);
	if (lcd == NULL)
		return -ENOMEM;

	FUNC9(spi, lcd);
	lcd->spi = spi;
	lcd->mode = TPO_R02_MODE_800x480;
	FUNC8(lcd->gamma, td043mtea1_def_gamma, sizeof(lcd->gamma));

	lcd->vcc_reg = FUNC5(&spi->dev, "vcc");
	if (FUNC0(lcd->vcc_reg)) {
		FUNC2(&spi->dev, "failed to get VCC regulator\n");
		return FUNC1(lcd->vcc_reg);
	}

	lcd->reset_gpio = FUNC3(&spi->dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC0(lcd->reset_gpio)) {
		FUNC2(&spi->dev, "failed to get reset GPIO\n");
		return FUNC1(lcd->reset_gpio);
	}

	spi->bits_per_word = 16;
	spi->mode = SPI_MODE_0;

	ret = FUNC10(spi);
	if (ret < 0) {
		FUNC2(&spi->dev, "failed to setup SPI: %d\n", ret);
		return ret;
	}

	ret = FUNC11(&spi->dev.kobj, &td043mtea1_attr_group);
	if (ret < 0) {
		FUNC2(&spi->dev, "failed to create sysfs files\n");
		return ret;
	}

	FUNC7(&lcd->panel);
	lcd->panel.dev = &lcd->spi->dev;
	lcd->panel.funcs = &td043mtea1_funcs;

	ret = FUNC6(&lcd->panel);
	if (ret < 0) {
		FUNC12(&spi->dev.kobj, &td043mtea1_attr_group);
		return ret;
	}

	return 0;
}