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
struct intel_uncore {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct intel_uncore *uncore, i915_reg_t imr,
		    i915_reg_t iir, i915_reg_t ier)
{
	FUNC1(uncore, imr, 0xffffffff);
	FUNC0(uncore, imr);

	FUNC1(uncore, ier, 0);

	/* IIR can theoretically queue up two events. Be paranoid. */
	FUNC1(uncore, iir, 0xffffffff);
	FUNC0(uncore, iir);
	FUNC1(uncore, iir, 0xffffffff);
	FUNC0(uncore, iir);
}