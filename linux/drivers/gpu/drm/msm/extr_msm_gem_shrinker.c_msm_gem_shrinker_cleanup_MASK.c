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
struct TYPE_2__ {scalar_t__ nr_deferred; } ;
struct msm_drm_private {TYPE_1__ shrinker; int /*<<< orphan*/  vmap_notifier; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_device *dev)
{
	struct msm_drm_private *priv = dev->dev_private;

	if (priv->shrinker.nr_deferred) {
		FUNC0(FUNC2(&priv->vmap_notifier));
		FUNC1(&priv->shrinker);
	}
}