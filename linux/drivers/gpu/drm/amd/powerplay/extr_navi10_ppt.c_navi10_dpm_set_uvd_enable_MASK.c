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
struct smu_power_gate {int vcn_gated; } ;
struct smu_power_context {struct smu_power_gate power_gate; } ;
struct smu_context {struct smu_power_context smu_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMU_FEATURE_VCN_PG_BIT ; 
 int /*<<< orphan*/  SMU_MSG_PowerDownVcn ; 
 int /*<<< orphan*/  SMU_MSG_PowerUpVcn ; 
 scalar_t__ FUNC0 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct smu_context *smu, bool enable)
{
	struct smu_power_context *smu_power = &smu->smu_power;
	struct smu_power_gate *power_gate = &smu_power->power_gate;
	int ret = 0;

	if (enable) {
		/* vcn dpm on is a prerequisite for vcn power gate messages */
		if (FUNC0(smu, SMU_FEATURE_VCN_PG_BIT)) {
			ret = FUNC2(smu, SMU_MSG_PowerUpVcn, 1);
			if (ret)
				return ret;
		}
		power_gate->vcn_gated = false;
	} else {
		if (FUNC0(smu, SMU_FEATURE_VCN_PG_BIT)) {
			ret = FUNC1(smu, SMU_MSG_PowerDownVcn);
			if (ret)
				return ret;
		}
		power_gate->vcn_gated = true;
	}

	return ret;
}