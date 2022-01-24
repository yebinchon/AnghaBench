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
struct TYPE_5__ {int cxsr; } ;
struct TYPE_4__ {int cxsr; } ;
struct TYPE_6__ {int /*<<< orphan*/  wm_mutex; TYPE_2__ g4x; TYPE_1__ vlv; } ;
struct drm_i915_private {TYPE_3__ wm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(struct drm_i915_private *dev_priv, bool enable)
{
	bool ret;

	FUNC4(&dev_priv->wm.wm_mutex);
	ret = FUNC3(dev_priv, enable);
	if (FUNC2(dev_priv) || FUNC0(dev_priv))
		dev_priv->wm.vlv.cxsr = enable;
	else if (FUNC1(dev_priv))
		dev_priv->wm.g4x.cxsr = enable;
	FUNC5(&dev_priv->wm.wm_mutex);

	return ret;
}