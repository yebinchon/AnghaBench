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
struct TYPE_3__ {int cdclk; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct drm_i915_private* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *kdev)
{
	struct drm_i915_private *dev_priv = FUNC2(kdev);

	if (FUNC1(!FUNC0(dev_priv)))
		return -ENODEV;

	return dev_priv->cdclk.hw.cdclk;
}