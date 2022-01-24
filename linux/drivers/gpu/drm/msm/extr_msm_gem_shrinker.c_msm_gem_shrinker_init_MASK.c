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
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_4__ {int /*<<< orphan*/  seeks; int /*<<< orphan*/  scan_objects; int /*<<< orphan*/  count_objects; } ;
struct msm_drm_private {TYPE_1__ vmap_notifier; TYPE_2__ shrinker; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SEEKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_gem_shrinker_count ; 
 int /*<<< orphan*/  msm_gem_shrinker_scan ; 
 int /*<<< orphan*/  msm_gem_shrinker_vmap ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(struct drm_device *dev)
{
	struct msm_drm_private *priv = dev->dev_private;
	priv->shrinker.count_objects = msm_gem_shrinker_count;
	priv->shrinker.scan_objects = msm_gem_shrinker_scan;
	priv->shrinker.seeks = DEFAULT_SEEKS;
	FUNC0(FUNC1(&priv->shrinker));

	priv->vmap_notifier.notifier_call = msm_gem_shrinker_vmap;
	FUNC0(FUNC2(&priv->vmap_notifier));
}