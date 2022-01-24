#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int count; int fw_domains; void* base; } ;
struct intel_guc {TYPE_1__ send_regs; } ;
struct intel_gt {int /*<<< orphan*/  uncore; int /*<<< orphan*/  i915; } ;
typedef  enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FW_REG_READ ; 
 int FW_REG_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int GEN11_SOFT_SCRATCH_COUNT ; 
 scalar_t__ GUC_MAX_MMIO_MSG_LEN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOFT_SCRATCH_COUNT ; 
 int /*<<< orphan*/  FUNC4 (struct intel_guc*,unsigned int) ; 
 struct intel_gt* FUNC5 (struct intel_guc*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC5(guc);
	enum forcewake_domains fw_domains = 0;
	unsigned int i;

	if (FUNC2(gt->i915) >= 11) {
		guc->send_regs.base =
				FUNC6(FUNC1(0));
		guc->send_regs.count = GEN11_SOFT_SCRATCH_COUNT;
	} else {
		guc->send_regs.base = FUNC6(FUNC3(0));
		guc->send_regs.count = GUC_MAX_MMIO_MSG_LEN;
		FUNC0(GUC_MAX_MMIO_MSG_LEN > SOFT_SCRATCH_COUNT);
	}

	for (i = 0; i < guc->send_regs.count; i++) {
		fw_domains |= FUNC7(gt->uncore,
					FUNC4(guc, i),
					FW_REG_READ | FW_REG_WRITE);
	}
	guc->send_regs.fw_domains = fw_domains;
}