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
struct intel_uncore {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct intel_uncore *uncore,
		   i915_reg_t imr, u32 imr_val,
		   i915_reg_t ier, u32 ier_val,
		   i915_reg_t iir)
{
	FUNC0(uncore, iir);

	FUNC2(uncore, ier, ier_val);
	FUNC2(uncore, imr, imr_val);
	FUNC1(uncore, imr);
}