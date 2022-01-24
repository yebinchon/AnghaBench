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
struct smu_context {int watermarks_bitmap; TYPE_1__* display_config; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_display; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMU_FEATURE_DPM_DCEFCLK_BIT ; 
 int /*<<< orphan*/  SMU_FEATURE_DPM_SOCCLK_BIT ; 
 int /*<<< orphan*/  SMU_MSG_NumOfDisplays ; 
 int WATERMARKS_EXIST ; 
 int WATERMARKS_LOADED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smu_context*) ; 

__attribute__((used)) static int FUNC4(struct smu_context *smu)
{
	int ret = 0;

	if ((smu->watermarks_bitmap & WATERMARKS_EXIST) &&
	    !(smu->watermarks_bitmap & WATERMARKS_LOADED)) {
		ret = FUNC3(smu);
		if (ret) {
			FUNC0("Failed to update WMTABLE!");
			return ret;
		}
		smu->watermarks_bitmap |= WATERMARKS_LOADED;
	}

	if ((smu->watermarks_bitmap & WATERMARKS_EXIST) &&
	    FUNC1(smu, SMU_FEATURE_DPM_DCEFCLK_BIT) &&
	    FUNC1(smu, SMU_FEATURE_DPM_SOCCLK_BIT)) {
		FUNC2(smu,
					    SMU_MSG_NumOfDisplays,
					    smu->display_config->num_display);
	}

	return ret;
}