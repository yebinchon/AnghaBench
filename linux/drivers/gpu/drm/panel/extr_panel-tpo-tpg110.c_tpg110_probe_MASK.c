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
struct TYPE_3__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct tpg110 {TYPE_1__ panel; struct spi_device* spi; int /*<<< orphan*/  grestb; int /*<<< orphan*/  backlight; int /*<<< orphan*/  height; int /*<<< orphan*/  width; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  mode; struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_3WIRE_HIZ ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tpg110* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct tpg110*) ; 
 int FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  tpg110_drm_funcs ; 
 int FUNC11 (struct tpg110*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct device_node *np = dev->of_node;
	struct tpg110 *tpg;
	int ret;

	tpg = FUNC4(dev, sizeof(*tpg), GFP_KERNEL);
	if (!tpg)
		return -ENOMEM;
	tpg->dev = dev;

	/* We get the physical display dimensions from the DT */
	ret = FUNC8(np, "width-mm", &tpg->width);
	if (ret)
		FUNC0(dev, "no panel width specified\n");
	ret = FUNC8(np, "height-mm", &tpg->height);
	if (ret)
		FUNC0(dev, "no panel height specified\n");

	/* Look for some optional backlight */
	tpg->backlight = FUNC5(dev);
	if (FUNC1(tpg->backlight))
		return FUNC2(tpg->backlight);

	/* This asserts the GRESTB signal, putting the display into reset */
	tpg->grestb = FUNC3(dev, "grestb", GPIOD_OUT_HIGH);
	if (FUNC1(tpg->grestb)) {
		FUNC0(dev, "no GRESTB GPIO\n");
		return -ENODEV;
	}

	spi->bits_per_word = 8;
	spi->mode |= SPI_3WIRE_HIZ;
	ret = FUNC10(spi);
	if (ret < 0) {
		FUNC0(dev, "spi setup failed.\n");
		return ret;
	}
	tpg->spi = spi;

	ret = FUNC11(tpg);
	if (ret)
		return ret;

	FUNC7(&tpg->panel);
	tpg->panel.dev = dev;
	tpg->panel.funcs = &tpg110_drm_funcs;
	FUNC9(spi, tpg);

	return FUNC6(&tpg->panel);
}