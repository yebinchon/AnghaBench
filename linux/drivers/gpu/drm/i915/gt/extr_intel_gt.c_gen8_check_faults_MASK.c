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
typedef  int u64 ;
typedef  int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {int /*<<< orphan*/  i915; struct intel_uncore* uncore; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FAULT_GTT_SEL ; 
 int FAULT_VA_HIGH_BITS ; 
 int /*<<< orphan*/  GEN12_FAULT_TLB_DATA0 ; 
 int /*<<< orphan*/  GEN12_FAULT_TLB_DATA1 ; 
 int /*<<< orphan*/  GEN12_RING_FAULT_REG ; 
 int /*<<< orphan*/  GEN8_FAULT_TLB_DATA0 ; 
 int /*<<< orphan*/  GEN8_FAULT_TLB_DATA1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GEN8_RING_FAULT_REG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int RING_FAULT_VALID ; 
 int FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct intel_gt *gt)
{
	struct intel_uncore *uncore = gt->uncore;
	i915_reg_t fault_reg, fault_data0_reg, fault_data1_reg;
	u32 fault;

	if (FUNC2(gt->i915) >= 12) {
		fault_reg = GEN12_RING_FAULT_REG;
		fault_data0_reg = GEN12_FAULT_TLB_DATA0;
		fault_data1_reg = GEN12_FAULT_TLB_DATA1;
	} else {
		fault_reg = GEN8_RING_FAULT_REG;
		fault_data0_reg = GEN8_FAULT_TLB_DATA0;
		fault_data1_reg = GEN8_FAULT_TLB_DATA1;
	}

	fault = FUNC5(uncore, fault_reg);
	if (fault & RING_FAULT_VALID) {
		u32 fault_data0, fault_data1;
		u64 fault_addr;

		fault_data0 = FUNC5(uncore, fault_data0_reg);
		fault_data1 = FUNC5(uncore, fault_data1_reg);

		fault_addr = ((u64)(fault_data1 & FAULT_VA_HIGH_BITS) << 44) |
			     ((u64)fault_data0 << 12);

		FUNC0("Unexpected fault\n"
				 "\tAddr: 0x%08x_%08x\n"
				 "\tAddress space: %s\n"
				 "\tEngine ID: %d\n"
				 "\tSource ID: %d\n"
				 "\tType: %d\n",
				 FUNC7(fault_addr),
				 FUNC6(fault_addr),
				 fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
				 FUNC1(fault),
				 FUNC4(fault),
				 FUNC3(fault));
	}
}