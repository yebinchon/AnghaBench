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
struct mipi_dbi {int /*<<< orphan*/  command; struct gpio_desc* reset; } ;
struct mipi_dbi_dev {struct drm_device drm; struct mipi_dbi dbi; } ;
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
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  ili9225_dbi_command ; 
 int /*<<< orphan*/  ili9225_driver ; 
 int /*<<< orphan*/  ili9225_mode ; 
 int /*<<< orphan*/  ili9225_pipe_funcs ; 
 int /*<<< orphan*/  FUNC10 (struct mipi_dbi_dev*) ; 
 struct mipi_dbi_dev* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mipi_dbi_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct spi_device*,struct mipi_dbi*,struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*,struct drm_device*) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct mipi_dbi_dev *dbidev;
	struct drm_device *drm;
	struct mipi_dbi *dbi;
	struct gpio_desc *rs;
	u32 rotation = 0;
	int ret;

	dbidev = FUNC11(sizeof(*dbidev), GFP_KERNEL);
	if (!dbidev)
		return -ENOMEM;

	dbi = &dbidev->dbi;
	drm = &dbidev->drm;
	ret = FUNC4(dev, drm, &ili9225_driver);
	if (ret) {
		FUNC10(dbidev);
		return ret;
	}

	FUNC8(drm);

	dbi->reset = FUNC5(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC1(dbi->reset)) {
		FUNC0(dev, "Failed to get gpio 'reset'\n");
		return FUNC2(dbi->reset);
	}

	rs = FUNC5(dev, "rs", GPIOD_OUT_LOW);
	if (FUNC1(rs)) {
		FUNC0(dev, "Failed to get gpio 'rs'\n");
		return FUNC2(rs);
	}

	FUNC3(dev, "rotation", &rotation);

	ret = FUNC13(spi, dbi, rs);
	if (ret)
		return ret;

	/* override the command function set in  mipi_dbi_spi_init() */
	dbi->command = ili9225_dbi_command;

	ret = FUNC12(dbidev, &ili9225_pipe_funcs, &ili9225_mode, rotation);
	if (ret)
		return ret;

	FUNC9(drm);

	ret = FUNC6(drm, 0);
	if (ret)
		return ret;

	FUNC14(spi, drm);

	FUNC7(drm, 0);

	return 0;
}