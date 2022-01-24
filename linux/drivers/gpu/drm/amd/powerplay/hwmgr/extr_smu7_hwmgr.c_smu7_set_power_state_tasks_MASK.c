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
struct smu7_hwmgr {int apply_optimized_settings; } ;
struct TYPE_2__ {int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; scalar_t__ backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_PCIEPerformanceRequest ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pp_hwmgr*,void const*) ; 
 int FUNC3 (struct pp_hwmgr*) ; 
 int FUNC4 (struct pp_hwmgr*,void const*) ; 
 int FUNC5 (struct pp_hwmgr*,void const*) ; 
 int FUNC6 (struct pp_hwmgr*) ; 
 int FUNC7 (struct pp_hwmgr*,void const*) ; 
 int FUNC8 (struct pp_hwmgr*,void const*) ; 
 int FUNC9 (struct pp_hwmgr*) ; 
 int FUNC10 (struct pp_hwmgr*) ; 
 int FUNC11 (struct pp_hwmgr*) ; 
 int FUNC12 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC13(struct pp_hwmgr *hwmgr, const void *input)
{
	int tmp_result, result = 0;
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

	tmp_result = FUNC2(hwmgr, input);
	FUNC0((0 == tmp_result),
			"Failed to find DPM states clocks in DPM table!",
			result = tmp_result);

	if (FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_PCIEPerformanceRequest)) {
		tmp_result =
			FUNC8(hwmgr, input);
		FUNC0((0 == tmp_result),
				"Failed to request link speed change before state change!",
				result = tmp_result);
	}

	tmp_result = FUNC3(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to freeze SCLK MCLK DPM!", result = tmp_result);

	tmp_result = FUNC7(hwmgr, input);
	FUNC0((0 == tmp_result),
			"Failed to populate and upload SCLK MCLK DPM levels!",
			result = tmp_result);

	tmp_result = FUNC10(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to update avfs voltages!",
			result = tmp_result);

	tmp_result = FUNC4(hwmgr, input);
	FUNC0((0 == tmp_result),
			"Failed to generate DPM level enabled mask!",
			result = tmp_result);

	tmp_result = FUNC12(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to update SCLK threshold!",
			result = tmp_result);

	tmp_result = FUNC6(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to notify smc display settings!",
			result = tmp_result);

	tmp_result = FUNC9(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to unfreeze SCLK MCLK DPM!",
			result = tmp_result);

	tmp_result = FUNC11(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to upload DPM level enabled mask!",
			result = tmp_result);

	if (FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_PCIEPerformanceRequest)) {
		tmp_result =
			FUNC5(hwmgr, input);
		FUNC0((0 == tmp_result),
				"Failed to notify link speed change after state change!",
				result = tmp_result);
	}
	data->apply_optimized_settings = false;
	return result;
}