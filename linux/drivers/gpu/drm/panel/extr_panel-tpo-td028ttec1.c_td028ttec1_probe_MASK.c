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
struct TYPE_3__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/ * dev; } ;
struct td028ttec1_panel {TYPE_1__ panel; struct spi_device* spi; int /*<<< orphan*/  backlight; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct td028ttec1_panel* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,struct td028ttec1_panel*) ; 
 int FUNC8 (struct spi_device*) ; 
 int /*<<< orphan*/  td028ttec1_funcs ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	struct td028ttec1_panel *lcd;
	int ret;

	lcd = FUNC3(&spi->dev, sizeof(*lcd), GFP_KERNEL);
	if (!lcd)
		return -ENOMEM;

	FUNC7(spi, lcd);
	lcd->spi = spi;

	lcd->backlight = FUNC4(&spi->dev);
	if (FUNC0(lcd->backlight))
		return FUNC1(lcd->backlight);

	spi->mode = SPI_MODE_3;
	spi->bits_per_word = 9;

	ret = FUNC8(spi);
	if (ret < 0) {
		FUNC2(&spi->dev, "failed to setup SPI: %d\n", ret);
		return ret;
	}

	FUNC6(&lcd->panel);
	lcd->panel.dev = &lcd->spi->dev;
	lcd->panel.funcs = &td028ttec1_funcs;

	return FUNC5(&lcd->panel);
}