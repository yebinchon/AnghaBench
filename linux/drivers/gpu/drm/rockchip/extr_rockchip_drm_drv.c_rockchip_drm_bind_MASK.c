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
struct rockchip_drm_private {int /*<<< orphan*/  psr_list_lock; int /*<<< orphan*/  psr_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_crtc; } ;
struct drm_device {int irq_enabled; struct rockchip_drm_private* dev_private; TYPE_1__ mode_config; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct drm_device*) ; 
 struct rockchip_drm_private* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC7 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int FUNC9 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int FUNC15 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rockchip_drm_driver ; 
 int /*<<< orphan*/  FUNC17 (struct drm_device*) ; 
 int FUNC18 (struct drm_device*) ; 
 int FUNC19 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_device*) ; 

__attribute__((used)) static int FUNC22(struct device *dev)
{
	struct drm_device *drm_dev;
	struct rockchip_drm_private *private;
	int ret;

	drm_dev = FUNC7(&rockchip_drm_driver, dev);
	if (FUNC1(drm_dev))
		return FUNC2(drm_dev);

	FUNC5(dev, drm_dev);

	private = FUNC6(drm_dev->dev, sizeof(*private), GFP_KERNEL);
	if (!private) {
		ret = -ENOMEM;
		goto err_free;
	}

	drm_dev->dev_private = private;

	FUNC0(&private->psr_list);
	FUNC16(&private->psr_list_lock);

	ret = FUNC19(drm_dev);
	if (ret)
		goto err_free;

	FUNC13(drm_dev);

	FUNC20(drm_dev);

	/* Try to bind all sub drivers. */
	ret = FUNC3(dev, drm_dev);
	if (ret)
		goto err_mode_config_cleanup;

	ret = FUNC15(drm_dev, drm_dev->mode_config.num_crtc);
	if (ret)
		goto err_unbind_all;

	FUNC14(drm_dev);

	/*
	 * enable drm irq mode.
	 * - with irq_enabled = true, we can use the vblank feature.
	 */
	drm_dev->irq_enabled = true;

	ret = FUNC18(drm_dev);
	if (ret)
		goto err_unbind_all;

	/* init kms poll for handling hpd */
	FUNC11(drm_dev);

	ret = FUNC9(drm_dev, 0);
	if (ret)
		goto err_kms_helper_poll_fini;

	return 0;
err_kms_helper_poll_fini:
	FUNC10(drm_dev);
	FUNC17(drm_dev);
err_unbind_all:
	FUNC4(dev, drm_dev);
err_mode_config_cleanup:
	FUNC12(drm_dev);
	FUNC21(drm_dev);
err_free:
	drm_dev->dev_private = NULL;
	FUNC5(dev, NULL);
	FUNC8(drm_dev);
	return ret;
}