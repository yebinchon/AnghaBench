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
typedef  scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RPM_CONFIG0 ; 
 int /*<<< orphan*/  WAIT_FOR_RC6_EXIT ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct drm_i915_private *dev_priv, u32 addr)
{
	return FUNC1(dev_priv, addr) ||
		addr == FUNC2(WAIT_FOR_RC6_EXIT) ||
		(addr >= FUNC2(RPM_CONFIG0) &&
		 addr <= FUNC2(FUNC0(8)));
}