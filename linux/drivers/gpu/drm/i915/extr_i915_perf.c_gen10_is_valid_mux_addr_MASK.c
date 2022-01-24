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
 int /*<<< orphan*/  GEN10_NOA_WRITE_HIGH ; 
 int /*<<< orphan*/  OA_PERFCNT3_LO ; 
 int /*<<< orphan*/  OA_PERFCNT4_HI ; 
 scalar_t__ FUNC0 (struct drm_i915_private*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct drm_i915_private *dev_priv, u32 addr)
{
	return FUNC0(dev_priv, addr) ||
		addr == FUNC1(GEN10_NOA_WRITE_HIGH) ||
		(addr >= FUNC1(OA_PERFCNT3_LO) &&
		 addr <= FUNC1(OA_PERFCNT4_HI));
}