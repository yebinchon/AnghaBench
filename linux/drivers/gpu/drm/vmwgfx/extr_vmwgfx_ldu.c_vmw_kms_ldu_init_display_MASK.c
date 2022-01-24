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
struct vmw_private {int capabilities; TYPE_1__* ldu_priv; int /*<<< orphan*/  active_display_unit; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fb; scalar_t__ last_num_active; scalar_t__ num_active; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SVGA_CAP_MULTIMON ; 
 int VMWGFX_NUM_DISPLAY_UNITS ; 
 int FUNC2 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmw_du_legacy ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_private*,int) ; 

int FUNC7(struct vmw_private *dev_priv)
{
	struct drm_device *dev = dev_priv->dev;
	int i, ret;

	if (dev_priv->ldu_priv) {
		FUNC0("ldu system already on\n");
		return -EINVAL;
	}

	dev_priv->ldu_priv = FUNC4(sizeof(*dev_priv->ldu_priv), GFP_KERNEL);
	if (!dev_priv->ldu_priv)
		return -ENOMEM;

	FUNC1(&dev_priv->ldu_priv->active);
	dev_priv->ldu_priv->num_active = 0;
	dev_priv->ldu_priv->last_num_active = 0;
	dev_priv->ldu_priv->fb = NULL;

	/* for old hardware without multimon only enable one display */
	if (dev_priv->capabilities & SVGA_CAP_MULTIMON)
		ret = FUNC2(dev, VMWGFX_NUM_DISPLAY_UNITS);
	else
		ret = FUNC2(dev, 1);
	if (ret != 0)
		goto err_free;

	FUNC5(dev_priv);

	if (dev_priv->capabilities & SVGA_CAP_MULTIMON)
		for (i = 0; i < VMWGFX_NUM_DISPLAY_UNITS; ++i)
			FUNC6(dev_priv, i);
	else
		FUNC6(dev_priv, 0);

	dev_priv->active_display_unit = vmw_du_legacy;

	FUNC0("Legacy Display Unit initialized\n");

	return 0;

err_free:
	FUNC3(dev_priv->ldu_priv);
	dev_priv->ldu_priv = NULL;
	return ret;
}