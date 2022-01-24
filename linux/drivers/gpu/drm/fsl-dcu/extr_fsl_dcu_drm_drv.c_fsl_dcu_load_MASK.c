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
struct fsl_dcu_drm_device {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_crtc; } ;
struct drm_device {struct fsl_dcu_drm_device* dev_private; int /*<<< orphan*/  dev; TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct fsl_dcu_drm_device*) ; 
 int legacyfb_depth ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev, unsigned long flags)
{
	struct fsl_dcu_drm_device *fsl_dev = dev->dev_private;
	int ret;

	ret = FUNC7(fsl_dev);
	if (ret < 0) {
		FUNC0(dev->dev, "failed to initialize mode setting\n");
		return ret;
	}

	ret = FUNC6(dev, dev->mode_config.num_crtc);
	if (ret < 0) {
		FUNC0(dev->dev, "failed to initialize vblank\n");
		goto done;
	}

	ret = FUNC2(dev, fsl_dev->irq);
	if (ret < 0) {
		FUNC0(dev->dev, "failed to install IRQ handler\n");
		goto done;
	}

	if (legacyfb_depth != 16 && legacyfb_depth != 24 &&
	    legacyfb_depth != 32) {
		FUNC1(dev->dev,
			"Invalid legacyfb_depth.  Defaulting to 24bpp\n");
		legacyfb_depth = 24;
	}

	return 0;
done:
	FUNC4(dev);

	FUNC5(dev);
	FUNC3(dev);
	dev->dev_private = NULL;

	return ret;
}