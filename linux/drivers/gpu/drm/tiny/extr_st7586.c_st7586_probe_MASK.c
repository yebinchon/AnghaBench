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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct drm_device {int dummy; } ;
struct mipi_dbi {int swap_bytes; int /*<<< orphan*/ * read_commands; struct gpio_desc* reset; } ;
struct mipi_dbi_dev {struct drm_device drm; struct mipi_dbi dbi; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_3__ {int vdisplay; int hdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC2 (struct gpio_desc*) ; 
 int FUNC3 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,struct drm_device*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct mipi_dbi_dev*) ; 
 struct mipi_dbi_dev* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct mipi_dbi_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC14 (struct spi_device*,struct mipi_dbi*,struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct drm_device*) ; 
 int /*<<< orphan*/  st7586_driver ; 
 int /*<<< orphan*/  st7586_formats ; 
 TYPE_1__ st7586_mode ; 
 int /*<<< orphan*/  st7586_pipe_funcs ; 

__attribute__((used)) static int FUNC16(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct mipi_dbi_dev *dbidev;
	struct drm_device *drm;
	struct mipi_dbi *dbi;
	struct gpio_desc *a0;
	u32 rotation = 0;
	size_t bufsize;
	int ret;

	dbidev = FUNC12(sizeof(*dbidev), GFP_KERNEL);
	if (!dbidev)
		return -ENOMEM;

	dbi = &dbidev->dbi;
	drm = &dbidev->drm;
	ret = FUNC5(dev, drm, &st7586_driver);
	if (ret) {
		FUNC11(dbidev);
		return ret;
	}

	FUNC9(drm);

	bufsize = (st7586_mode.vdisplay + 2) / 3 * st7586_mode.hdisplay;

	dbi->reset = FUNC6(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC2(dbi->reset)) {
		FUNC1(dev, "Failed to get gpio 'reset'\n");
		return FUNC3(dbi->reset);
	}

	a0 = FUNC6(dev, "a0", GPIOD_OUT_LOW);
	if (FUNC2(a0)) {
		FUNC1(dev, "Failed to get gpio 'a0'\n");
		return FUNC3(a0);
	}

	FUNC4(dev, "rotation", &rotation);

	ret = FUNC14(spi, dbi, a0);
	if (ret)
		return ret;

	/* Cannot read from this controller via SPI */
	dbi->read_commands = NULL;

	ret = FUNC13(dbidev, &st7586_pipe_funcs,
					     st7586_formats, FUNC0(st7586_formats),
					     &st7586_mode, rotation, bufsize);
	if (ret)
		return ret;

	/*
	 * we are using 8-bit data, so we are not actually swapping anything,
	 * but setting mipi->swap_bytes makes mipi_dbi_typec3_command() do the
	 * right thing and not use 16-bit transfers (which results in swapped
	 * bytes on little-endian systems and causes out of order data to be
	 * sent to the display).
	 */
	dbi->swap_bytes = true;

	FUNC10(drm);

	ret = FUNC7(drm, 0);
	if (ret)
		return ret;

	FUNC15(spi, drm);

	FUNC8(drm, 0);

	return 0;
}