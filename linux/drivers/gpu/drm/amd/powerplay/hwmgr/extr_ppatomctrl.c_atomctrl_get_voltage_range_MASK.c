#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct pp_hwmgr {int chip_id; int /*<<< orphan*/  adev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ulMinVddc; int /*<<< orphan*/  ulMaxVddc; } ;
struct TYPE_3__ {int /*<<< orphan*/  ulMinVddc; int /*<<< orphan*/  ulMaxVddc; } ;
typedef  TYPE_1__ ATOM_ASIC_PROFILING_INFO_V3_6 ;
typedef  TYPE_2__ ATOM_ASIC_PROFILING_INFO_V3_3 ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_ProfilingInfo ; 
#define  CHIP_FIJI 132 
#define  CHIP_POLARIS10 131 
#define  CHIP_POLARIS11 130 
#define  CHIP_POLARIS12 129 
#define  CHIP_TONGA 128 
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct pp_hwmgr *hwmgr, uint32_t *max_vddc,
							uint32_t *min_vddc)
{
	void *profile;

	profile = FUNC2(hwmgr->adev,
					FUNC0(DATA, ASIC_ProfilingInfo),
					NULL, NULL, NULL);

	if (profile) {
		switch (hwmgr->chip_id) {
		case CHIP_TONGA:
		case CHIP_FIJI:
			*max_vddc = FUNC1(((ATOM_ASIC_PROFILING_INFO_V3_3 *)profile)->ulMaxVddc) / 4;
			*min_vddc = FUNC1(((ATOM_ASIC_PROFILING_INFO_V3_3 *)profile)->ulMinVddc) / 4;
			return;
		case CHIP_POLARIS11:
		case CHIP_POLARIS10:
		case CHIP_POLARIS12:
			*max_vddc = FUNC1(((ATOM_ASIC_PROFILING_INFO_V3_6 *)profile)->ulMaxVddc) / 100;
			*min_vddc = FUNC1(((ATOM_ASIC_PROFILING_INFO_V3_6 *)profile)->ulMinVddc) / 100;
			return;
		default:
			break;
		}
	}
	*max_vddc = 0;
	*min_vddc = 0;
}