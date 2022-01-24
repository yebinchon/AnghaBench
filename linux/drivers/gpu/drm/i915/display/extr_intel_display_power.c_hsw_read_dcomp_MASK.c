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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_COMP_BDW ; 
 int /*<<< orphan*/  D_COMP_HSW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 

__attribute__((used)) static u32 FUNC2(struct drm_i915_private *dev_priv)
{
	if (FUNC1(dev_priv))
		return FUNC0(D_COMP_HSW);
	else
		return FUNC0(D_COMP_BDW);
}