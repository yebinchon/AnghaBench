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
typedef  int u32 ;
struct intel_uncore {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(struct intel_uncore *uncore,
						i915_reg_t reg, u32 val,
						u32 mask, u32 expected_val)
{
	u32 reg_val;

	FUNC1(uncore, reg, val);
	reg_val = FUNC0(uncore, reg);

	return (reg_val & mask) != expected_val ? -EINVAL : 0;
}