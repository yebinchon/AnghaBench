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
 int /*<<< orphan*/  HALF_SLICE_CHICKEN2 ; 
 int /*<<< orphan*/  MICRO_BP0_0 ; 
 int /*<<< orphan*/  NOA_WRITE ; 
 int /*<<< orphan*/  OA_PERFCNT1_LO ; 
 int /*<<< orphan*/  OA_PERFCNT2_HI ; 
 int /*<<< orphan*/  OA_PERFMATRIX_HI ; 
 int /*<<< orphan*/  OA_PERFMATRIX_LO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct drm_i915_private *dev_priv, u32 addr)
{
	return addr == FUNC0(HALF_SLICE_CHICKEN2) ||
		(addr >= FUNC0(MICRO_BP0_0) &&
		 addr <= FUNC0(NOA_WRITE)) ||
		(addr >= FUNC0(OA_PERFCNT1_LO) &&
		 addr <= FUNC0(OA_PERFCNT2_HI)) ||
		(addr >= FUNC0(OA_PERFMATRIX_LO) &&
		 addr <= FUNC0(OA_PERFMATRIX_HI));
}