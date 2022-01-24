#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; int /*<<< orphan*/  min_height; int /*<<< orphan*/  min_width; } ;
struct drm_device {TYPE_2__ mode_config; int /*<<< orphan*/  dev; struct atmel_hlcdc_dc* dev_private; } ;
struct atmel_hlcdc_dc {TYPE_1__* desc; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; int /*<<< orphan*/  min_height; int /*<<< orphan*/  min_width; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  mode_config_funcs ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev)
{
	struct atmel_hlcdc_dc *dc = dev->dev_private;
	int ret;

	FUNC4(dev);

	ret = FUNC0(dev);
	if (ret) {
		FUNC3(dev->dev, "failed to create HLCDC outputs: %d\n", ret);
		return ret;
	}

	ret = FUNC1(dev);
	if (ret) {
		FUNC3(dev->dev, "failed to create planes: %d\n", ret);
		return ret;
	}

	ret = FUNC2(dev);
	if (ret) {
		FUNC3(dev->dev, "failed to create crtc\n");
		return ret;
	}

	dev->mode_config.min_width = dc->desc->min_width;
	dev->mode_config.min_height = dc->desc->min_height;
	dev->mode_config.max_width = dc->desc->max_width;
	dev->mode_config.max_height = dc->desc->max_height;
	dev->mode_config.funcs = &mode_config_funcs;

	return 0;
}