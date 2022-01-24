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
struct intel_uncore {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  reg_value ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FW_REG_READ ; 
 int FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ,int,int,unsigned int,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int,int,unsigned int,int,int) ; 
 unsigned int FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,unsigned int) ; 
 int FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int,int) ; 

int FUNC10(struct intel_uncore *uncore,
			      i915_reg_t reg,
			      u32 mask,
			      u32 value,
			      unsigned int fast_timeout_us,
			      unsigned int slow_timeout_ms,
			      u32 *out_value)
{
	unsigned fw =
		FUNC2(uncore, reg, FW_REG_READ);
	u32 reg_value;
	int ret;

	FUNC6(slow_timeout_ms);

	FUNC7(&uncore->lock);
	FUNC3(uncore, fw);

	ret = FUNC0(uncore,
					   reg, mask, value,
					   fast_timeout_us, 0, &reg_value);

	FUNC4(uncore, fw);
	FUNC8(&uncore->lock);

	if (ret && slow_timeout_ms)
		ret = FUNC1(reg_value = FUNC5(uncore,
								       reg),
				 (reg_value & mask) == value,
				 slow_timeout_ms * 1000, 10, 1000);

	/* just trace the final value */
	FUNC9(false, reg, reg_value, sizeof(reg_value), true);

	if (out_value)
		*out_value = reg_value;

	return ret;
}