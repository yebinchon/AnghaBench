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
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ gpu_reset_clobbers_display; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 

__attribute__((used)) static bool FUNC2(struct drm_i915_private *dev_priv)
{
	return (FUNC0(dev_priv)->gpu_reset_clobbers_display &&
		FUNC1(dev_priv));
}