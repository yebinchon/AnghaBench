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
struct smu_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct smu_context*) ; 
 int FUNC2 (struct smu_context*) ; 
 int FUNC3 (struct smu_context*) ; 

__attribute__((used)) static int FUNC4(struct smu_context *smu)
{
	int ret;

	ret = FUNC3(smu);
	if (ret) {
		FUNC0("Failed to init smu_initialize_pptable!\n");
		return ret;
	}

	/**
	 * Create smu_table structure, and init smc tables such as
	 * TABLE_PPTABLE, TABLE_WATERMARKS, TABLE_SMU_METRICS, and etc.
	 */
	ret = FUNC2(smu);
	if (ret) {
		FUNC0("Failed to init smc tables!\n");
		return ret;
	}

	/**
	 * Create smu_power_context structure, and allocate smu_dpm_context and
	 * context size to fill the smu_power_context data.
	 */
	ret = FUNC1(smu);
	if (ret) {
		FUNC0("Failed to init smu_init_power!\n");
		return ret;
	}

	return 0;
}