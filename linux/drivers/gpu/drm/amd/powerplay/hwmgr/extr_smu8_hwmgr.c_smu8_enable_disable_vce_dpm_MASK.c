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
typedef  int /*<<< orphan*/  uint32_t ;
struct smu8_hwmgr {int /*<<< orphan*/  dpm_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; struct smu8_hwmgr* backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPMFlags_VCE_Enabled ; 
 int /*<<< orphan*/  PHM_PlatformCaps_VCEDPM ; 
 int /*<<< orphan*/  PPSMC_MSG_DisableAllSmuFeatures ; 
 int /*<<< orphan*/  PPSMC_MSG_EnableAllSmuFeatures ; 
 int /*<<< orphan*/  VCE_DPM_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr, bool enable)
{
	struct smu8_hwmgr *data = hwmgr->backend;
	uint32_t dpm_features = 0;

	if (enable && FUNC0(
				hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_VCEDPM)) {
		data->dpm_flags |= DPMFlags_VCE_Enabled;
		dpm_features |= VCE_DPM_MASK;
		FUNC1(hwmgr,
			    PPSMC_MSG_EnableAllSmuFeatures, dpm_features);
	} else {
		dpm_features |= VCE_DPM_MASK;
		data->dpm_flags &= ~DPMFlags_VCE_Enabled;
		FUNC1(hwmgr,
			   PPSMC_MSG_DisableAllSmuFeatures, dpm_features);
	}

	return 0;
}