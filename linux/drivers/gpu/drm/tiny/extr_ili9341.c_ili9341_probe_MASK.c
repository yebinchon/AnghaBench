#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct drm_device {int dummy; } ;
struct mipi_dbi {struct gpio_desc* reset; } ;
struct mipi_dbi_dev {struct gpio_desc* backlight; struct drm_device drm; struct mipi_dbi dbi; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct device*,struct drm_device*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC6 (struct device*) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  ili9341_driver ; 
 int /*<<< orphan*/  ili9341_pipe_funcs ; 
 int /*<<< orphan*/  FUNC11 (struct mipi_dbi_dev*) ; 
 struct mipi_dbi_dev* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct mipi_dbi_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct spi_device*,struct mipi_dbi*,struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct drm_device*) ; 
 int /*<<< orphan*/  yx240qv29_mode ; 

__attribute__((used)) static int FUNC16(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct mipi_dbi_dev *dbidev;
	struct drm_device *drm;
	struct mipi_dbi *dbi;
	struct gpio_desc *dc;
	u32 rotation = 0;
	int ret;

	dbidev = FUNC12(sizeof(*dbidev), GFP_KERNEL);
	if (!dbidev)
		return -ENOMEM;

	dbi = &dbidev->dbi;
	drm = &dbidev->drm;
	ret = FUNC4(dev, drm, &ili9341_driver);
	if (ret) {
		FUNC11(dbidev);
		return ret;
	}

	FUNC9(drm);

	dbi->reset = FUNC5(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC1(dbi->reset)) {
		FUNC0(dev, "Failed to get gpio 'reset'\n");
		return FUNC2(dbi->reset);
	}

	dc = FUNC5(dev, "dc", GPIOD_OUT_LOW);
	if (FUNC1(dc)) {
		FUNC0(dev, "Failed to get gpio 'dc'\n");
		return FUNC2(dc);
	}

	dbidev->backlight = FUNC6(dev);
	if (FUNC1(dbidev->backlight))
		return FUNC2(dbidev->backlight);

	FUNC3(dev, "rotation", &rotation);

	ret = FUNC14(spi, dbi, dc);
	if (ret)
		return ret;

	ret = FUNC13(dbidev, &ili9341_pipe_funcs, &yx240qv29_mode, rotation);
	if (ret)
		return ret;

	FUNC10(drm);

	ret = FUNC7(drm, 0);
	if (ret)
		return ret;

	FUNC15(spi, drm);

	FUNC8(drm, 0);

	return 0;
}