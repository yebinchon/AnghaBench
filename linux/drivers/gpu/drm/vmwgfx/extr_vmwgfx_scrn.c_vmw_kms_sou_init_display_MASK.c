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
struct vmw_private {int capabilities; int /*<<< orphan*/  active_display_unit; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int SVGA_CAP_SCREEN_OBJECT_2 ; 
 int VMWGFX_NUM_DISPLAY_UNITS ; 
 int FUNC1 (struct drm_device*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  vmw_du_screen_object ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*,int) ; 

int FUNC4(struct vmw_private *dev_priv)
{
	struct drm_device *dev = dev_priv->dev;
	int i, ret;

	if (!(dev_priv->capabilities & SVGA_CAP_SCREEN_OBJECT_2)) {
		FUNC0("Not using screen objects,"
			 " missing cap SCREEN_OBJECT_2\n");
		return -ENOSYS;
	}

	ret = -ENOMEM;

	ret = FUNC1(dev, VMWGFX_NUM_DISPLAY_UNITS);
	if (FUNC2(ret != 0))
		return ret;

	for (i = 0; i < VMWGFX_NUM_DISPLAY_UNITS; ++i)
		FUNC3(dev_priv, i);

	dev_priv->active_display_unit = vmw_du_screen_object;

	FUNC0("Screen Objects Display Unit initialized\n");

	return 0;
}