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
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM_DIRTY_LP_ALL ; 
 int FUNC0 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC1 (struct drm_device*) ; 

bool FUNC2(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC1(dev);

	return FUNC0(dev_priv, WM_DIRTY_LP_ALL);
}