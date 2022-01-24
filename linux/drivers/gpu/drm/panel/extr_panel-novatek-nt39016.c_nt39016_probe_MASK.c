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
struct device {int dummy; } ;
struct spi_device {int bits_per_word; int mode; struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct nt39016 {TYPE_1__ drm_panel; int /*<<< orphan*/  backlight; int /*<<< orphan*/  map; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  supply; int /*<<< orphan*/  panel_info; struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SPI_3WIRE ; 
 int SPI_MODE_3 ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct nt39016* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  nt39016_funcs ; 
 int /*<<< orphan*/  nt39016_regmap_config ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct nt39016*) ; 
 int FUNC12 (struct spi_device*) ; 

__attribute__((used)) static int FUNC13(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct nt39016 *panel;
	int err;

	panel = FUNC4(dev, sizeof(*panel), GFP_KERNEL);
	if (!panel)
		return -ENOMEM;

	panel->dev = dev;
	FUNC11(spi, panel);

	panel->panel_info = FUNC10(dev);
	if (!panel->panel_info)
		return -EINVAL;

	panel->supply = FUNC7(dev, "power");
	if (FUNC0(panel->supply)) {
		FUNC2(dev, "Failed to get power supply");
		return FUNC1(panel->supply);
	}

	panel->reset_gpio = FUNC3(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC0(panel->reset_gpio)) {
		FUNC2(dev, "Failed to get reset GPIO");
		return FUNC1(panel->reset_gpio);
	}

	spi->bits_per_word = 8;
	spi->mode = SPI_MODE_3 | SPI_3WIRE;
	err = FUNC12(spi);
	if (err) {
		FUNC2(dev, "Failed to setup SPI");
		return err;
	}

	panel->map = FUNC6(spi, &nt39016_regmap_config);
	if (FUNC0(panel->map)) {
		FUNC2(dev, "Failed to init regmap");
		return FUNC1(panel->map);
	}

	panel->backlight = FUNC5(dev);
	if (FUNC0(panel->backlight)) {
		err = FUNC1(panel->backlight);
		if (err != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get backlight handle");
		return err;
	}

	FUNC9(&panel->drm_panel);
	panel->drm_panel.dev = dev;
	panel->drm_panel.funcs = &nt39016_funcs;

	err = FUNC8(&panel->drm_panel);
	if (err < 0) {
		FUNC2(dev, "Failed to register panel");
		return err;
	}

	return 0;
}