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
struct intel_uncore {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct intel_uncore *uncore, i915_reg_t reg)
{
	u32 val = FUNC3(uncore, reg);

	if (val == 0)
		return;

	FUNC0(1, "Interrupt register 0x%x is not zero: 0x%08x\n",
	     FUNC1(reg), val);
	FUNC4(uncore, reg, 0xffffffff);
	FUNC2(uncore, reg);
	FUNC4(uncore, reg, 0xffffffff);
	FUNC2(uncore, reg);
}