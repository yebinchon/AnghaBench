#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int enabled; } ;
struct TYPE_4__ {int enabled; } ;
struct TYPE_6__ {TYPE_2__ rc6; TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_3__ gt_pm; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 

void FUNC4(struct drm_i915_private *dev_priv)
{
	dev_priv->gt_pm.rps.enabled = true; /* force RPS disabling */
	dev_priv->gt_pm.rc6.enabled = true; /* force RC6 disabling */
	FUNC3(dev_priv);

	if (FUNC0(dev_priv) >= 11)
		FUNC1(dev_priv);
	else if (FUNC0(dev_priv) >= 6)
		FUNC2(dev_priv);
}