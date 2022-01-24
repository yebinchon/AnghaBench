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
typedef  enum skl_power_gate { ____Placeholder_skl_power_gate } skl_power_gate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SKL_FUSE_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv,
					   enum skl_power_gate pg)
{
	/* Timeout 5us for PG#0, for other PGs 1us */
	FUNC1(FUNC2(dev_priv, SKL_FUSE_STATUS,
				      FUNC0(pg), 1));
}