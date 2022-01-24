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
struct intel_fbdev {int /*<<< orphan*/  helper; } ;
struct drm_i915_private {int /*<<< orphan*/  fbdev_suspend_work; struct intel_fbdev* fbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_fbdev*) ; 

void FUNC4(struct drm_i915_private *dev_priv)
{
	struct intel_fbdev *ifbdev = dev_priv->fbdev;

	if (!ifbdev)
		return;

	FUNC0(&dev_priv->fbdev_suspend_work);
	if (!FUNC1())
		FUNC3(ifbdev);

	FUNC2(&ifbdev->helper);
}