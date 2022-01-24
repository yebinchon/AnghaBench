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
struct drm_psb_private {int /*<<< orphan*/  mode_dev; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_B ; 
 int /*<<< orphan*/  DP_C ; 
 int DP_DETECTED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDVOB ; 
 int /*<<< orphan*/  SDVOC ; 
 int SDVO_DETECTED ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;

	FUNC6(dev);

	FUNC1(dev);

	FUNC3(dev, &dev_priv->mode_dev);
	FUNC5(dev, &dev_priv->mode_dev);

	/* These bits indicate HDMI not SDVO on CDV */
	if (FUNC0(SDVOB) & SDVO_DETECTED) {
		FUNC2(dev, &dev_priv->mode_dev, SDVOB);
		if (FUNC0(DP_B) & DP_DETECTED)
			FUNC4(dev, &dev_priv->mode_dev, DP_B);
	}

	if (FUNC0(SDVOC) & SDVO_DETECTED) {
		FUNC2(dev, &dev_priv->mode_dev, SDVOC);
		if (FUNC0(DP_C) & DP_DETECTED)
			FUNC4(dev, &dev_priv->mode_dev, DP_C);
	}
	return 0;
}