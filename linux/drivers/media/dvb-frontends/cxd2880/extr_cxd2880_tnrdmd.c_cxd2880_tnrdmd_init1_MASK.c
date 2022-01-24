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
struct cxd2880_tnrdmd {scalar_t__ diver_mode; struct cxd2880_tnrdmd* diver_sub; void* chip_id; int /*<<< orphan*/  cancel; scalar_t__ scan_mode; void* bandwidth; void* sys; scalar_t__ frequency_khz; void* clk_mode; void* state; } ;

/* Variables and functions */
 void* CXD2880_DTV_BW_UNKNOWN ; 
 void* CXD2880_DTV_SYS_UNKNOWN ; 
 void* CXD2880_TNRDMD_CHIP_ID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* CXD2880_TNRDMD_CLOCKMODE_UNKNOWN ; 
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ; 
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ; 
 void* CXD2880_TNRDMD_STATE_UNKNOWN ; 
 int EINVAL ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cxd2880_tnrdmd*,void**) ; 
 int FUNC3 (struct cxd2880_tnrdmd*) ; 
 int FUNC4 (struct cxd2880_tnrdmd*) ; 
 int FUNC5 (struct cxd2880_tnrdmd*) ; 
 int FUNC6 (struct cxd2880_tnrdmd*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

int FUNC8(struct cxd2880_tnrdmd *tnr_dmd)
{
	int ret;

	if (!tnr_dmd || tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
		return -EINVAL;

	tnr_dmd->chip_id = CXD2880_TNRDMD_CHIP_ID_UNKNOWN;
	tnr_dmd->state = CXD2880_TNRDMD_STATE_UNKNOWN;
	tnr_dmd->clk_mode = CXD2880_TNRDMD_CLOCKMODE_UNKNOWN;
	tnr_dmd->frequency_khz = 0;
	tnr_dmd->sys = CXD2880_DTV_SYS_UNKNOWN;
	tnr_dmd->bandwidth = CXD2880_DTV_BW_UNKNOWN;
	tnr_dmd->scan_mode = 0;
	FUNC1(&tnr_dmd->cancel, 0);

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
		tnr_dmd->diver_sub->chip_id = CXD2880_TNRDMD_CHIP_ID_UNKNOWN;
		tnr_dmd->diver_sub->state = CXD2880_TNRDMD_STATE_UNKNOWN;
		tnr_dmd->diver_sub->clk_mode = CXD2880_TNRDMD_CLOCKMODE_UNKNOWN;
		tnr_dmd->diver_sub->frequency_khz = 0;
		tnr_dmd->diver_sub->sys = CXD2880_DTV_SYS_UNKNOWN;
		tnr_dmd->diver_sub->bandwidth = CXD2880_DTV_BW_UNKNOWN;
		tnr_dmd->diver_sub->scan_mode = 0;
		FUNC1(&tnr_dmd->diver_sub->cancel, 0);
	}

	ret = FUNC2(tnr_dmd, &tnr_dmd->chip_id);
	if (ret)
		return ret;

	if (!FUNC0(tnr_dmd->chip_id))
		return -ENOTTY;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
		ret =
		    FUNC2(tnr_dmd->diver_sub,
					   &tnr_dmd->diver_sub->chip_id);
		if (ret)
			return ret;

		if (!FUNC0(tnr_dmd->diver_sub->chip_id))
			return -ENOTTY;
	}

	ret = FUNC3(tnr_dmd);
	if (ret)
		return ret;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
		ret = FUNC3(tnr_dmd->diver_sub);
		if (ret)
			return ret;
	}

	FUNC7(1000, 2000);

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
		ret = FUNC4(tnr_dmd->diver_sub);
		if (ret)
			return ret;
	}

	ret = FUNC4(tnr_dmd);
	if (ret)
		return ret;

	FUNC7(5000, 6000);

	ret = FUNC5(tnr_dmd);
	if (ret)
		return ret;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
		ret = FUNC5(tnr_dmd->diver_sub);
		if (ret)
			return ret;
	}

	ret = FUNC6(tnr_dmd);
	if (ret)
		return ret;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN)
		ret = FUNC6(tnr_dmd->diver_sub);

	return ret;
}