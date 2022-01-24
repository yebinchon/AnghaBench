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
struct drm_device {int /*<<< orphan*/  ctxlist; scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_via_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(struct drm_device *dev, int context)
{
	drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;

	FUNC5(dev_priv, context);

	/* Linux specific until context tracking code gets ported to BSD */
	/* Last context, perform cleanup */
	if (FUNC2(&dev->ctxlist)) {
		FUNC0("Last Context\n");
		FUNC1(dev);
		FUNC3(dev_priv);
		FUNC4(dev);
	}
	return 1;
}