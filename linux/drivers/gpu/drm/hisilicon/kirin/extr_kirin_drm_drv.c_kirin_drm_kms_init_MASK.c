#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kirin_drm_data {int /*<<< orphan*/  mode_config_funcs; int /*<<< orphan*/  config_max_width; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_crtc; int /*<<< orphan*/  funcs; int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {int irq_enabled; int /*<<< orphan*/  dev; TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int FUNC9 (struct drm_device*,struct kirin_drm_data const*) ; 

__attribute__((used)) static int FUNC10(struct drm_device *dev,
			      const struct kirin_drm_data *driver_data)
{
	int ret;

	/* dev->mode_config initialization */
	FUNC5(dev);
	dev->mode_config.min_width = 0;
	dev->mode_config.min_height = 0;
	dev->mode_config.max_width = driver_data->config_max_width;
	dev->mode_config.max_height = driver_data->config_max_width;
	dev->mode_config.funcs = driver_data->mode_config_funcs;

	/* display controller init */
	ret = FUNC9(dev, driver_data);
	if (ret)
		goto err_mode_config_cleanup;

	/* bind and init sub drivers */
	ret = FUNC1(dev->dev, dev);
	if (ret) {
		FUNC0("failed to bind all component.\n");
		goto err_private_cleanup;
	}

	/* vblank init */
	ret = FUNC7(dev, dev->mode_config.num_crtc);
	if (ret) {
		FUNC0("failed to initialize vblank.\n");
		goto err_unbind_all;
	}
	/* with irq_enabled = true, we can use the vblank feature. */
	dev->irq_enabled = true;

	/* reset all the states of crtc/plane/encoder/connector */
	FUNC6(dev);

	/* init kms poll for handling hpd */
	FUNC3(dev);

	return 0;

err_unbind_all:
	FUNC2(dev->dev, dev);
err_private_cleanup:
	FUNC8(dev);
err_mode_config_cleanup:
	FUNC4(dev);
	return ret;
}