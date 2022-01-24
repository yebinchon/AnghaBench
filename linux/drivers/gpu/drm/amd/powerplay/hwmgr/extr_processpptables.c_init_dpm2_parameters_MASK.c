#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_10__ {int VidMaxLimit; int VidStep; int /*<<< orphan*/  platformCaps; scalar_t__ LoadLineSlope; void* CACLeakage; void* SQRampingThreshold; scalar_t__ TDPODLimit; void* nearTDPLimitAdjusted; scalar_t__ VidMinLimit; scalar_t__ VidAdjustmentPolarity; scalar_t__ VidAdjustment; scalar_t__ TDPAdjustment; void* nearTDPLimit; void* TDPLimit; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ppm_parameter_table; int /*<<< orphan*/ * cac_leakage_table; } ;
struct pp_hwmgr {TYPE_2__ platform_descriptor; TYPE_1__ dyn_state; } ;
struct TYPE_15__ {scalar_t__ usPPMTableOffset; scalar_t__ usSize; } ;
struct TYPE_14__ {scalar_t__ usTableSize; } ;
struct TYPE_13__ {scalar_t__ usExtendendedHeaderOffset; } ;
struct TYPE_12__ {int /*<<< orphan*/  basicTable3; } ;
struct TYPE_11__ {scalar_t__ usTDPODLimit; scalar_t__ usCACLeakageTableOffset; scalar_t__ usLoadLineSlope; int /*<<< orphan*/  ulCACLeakage; int /*<<< orphan*/  ulSQRampingThreshold; int /*<<< orphan*/  ulNearTDPLimit; int /*<<< orphan*/  ulTDPLimit; int /*<<< orphan*/  basicTable4; } ;
typedef  int /*<<< orphan*/  ATOM_PPLIB_PPM_Table ;
typedef  TYPE_3__ ATOM_PPLIB_POWERPLAYTABLE5 ;
typedef  TYPE_4__ ATOM_PPLIB_POWERPLAYTABLE4 ;
typedef  TYPE_5__ ATOM_PPLIB_POWERPLAYTABLE3 ;
typedef  TYPE_6__ ATOM_PPLIB_POWERPLAYTABLE ;
typedef  TYPE_7__ ATOM_PPLIB_EXTENDEDHEADER ;
typedef  int /*<<< orphan*/  ATOM_PPLIB_CAC_Leakage_Table ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_EnablePlatformPowerManagement ; 
 int /*<<< orphan*/  PHM_PlatformCaps_PowerControl ; 
 scalar_t__ SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V5 ; 
 int FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ **,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pp_hwmgr *hwmgr,
			const ATOM_PPLIB_POWERPLAYTABLE *powerplay_table)
{
	int result = 0;

	if (FUNC2(powerplay_table->usTableSize) >=
	    sizeof(ATOM_PPLIB_POWERPLAYTABLE5)) {
		const  ATOM_PPLIB_POWERPLAYTABLE5 *ptable5 =
				(const ATOM_PPLIB_POWERPLAYTABLE5 *)powerplay_table;
		const  ATOM_PPLIB_POWERPLAYTABLE4 *ptable4 =
				(const ATOM_PPLIB_POWERPLAYTABLE4 *)
				(&ptable5->basicTable4);
		const  ATOM_PPLIB_POWERPLAYTABLE3 *ptable3 =
				(const ATOM_PPLIB_POWERPLAYTABLE3 *)
				(&ptable4->basicTable3);
		const  ATOM_PPLIB_EXTENDEDHEADER  *extended_header;
		uint16_t table_offset;
		ATOM_PPLIB_PPM_Table *atom_ppm_table;

		hwmgr->platform_descriptor.TDPLimit     = FUNC3(ptable5->ulTDPLimit);
		hwmgr->platform_descriptor.nearTDPLimit = FUNC3(ptable5->ulNearTDPLimit);

		hwmgr->platform_descriptor.TDPODLimit   = FUNC2(ptable5->usTDPODLimit);
		hwmgr->platform_descriptor.TDPAdjustment = 0;

		hwmgr->platform_descriptor.VidAdjustment = 0;
		hwmgr->platform_descriptor.VidAdjustmentPolarity = 0;
		hwmgr->platform_descriptor.VidMinLimit     = 0;
		hwmgr->platform_descriptor.VidMaxLimit     = 1500000;
		hwmgr->platform_descriptor.VidStep         = 6250;

		hwmgr->platform_descriptor.nearTDPLimitAdjusted = FUNC3(ptable5->ulNearTDPLimit);

		if (hwmgr->platform_descriptor.TDPODLimit != 0)
			FUNC4(hwmgr->platform_descriptor.platformCaps,
					PHM_PlatformCaps_PowerControl);

		hwmgr->platform_descriptor.SQRampingThreshold = FUNC3(ptable5->ulSQRampingThreshold);

		hwmgr->platform_descriptor.CACLeakage = FUNC3(ptable5->ulCACLeakage);

		hwmgr->dyn_state.cac_leakage_table = NULL;

		if (0 != ptable5->usCACLeakageTableOffset) {
			const ATOM_PPLIB_CAC_Leakage_Table *pCAC_leakage_table =
				(ATOM_PPLIB_CAC_Leakage_Table *)(((unsigned long)ptable5) +
				FUNC2(ptable5->usCACLeakageTableOffset));
			result = FUNC0(hwmgr,
				&hwmgr->dyn_state.cac_leakage_table, pCAC_leakage_table);
		}

		hwmgr->platform_descriptor.LoadLineSlope = FUNC2(ptable5->usLoadLineSlope);

		hwmgr->dyn_state.ppm_parameter_table = NULL;

		if (0 != ptable3->usExtendendedHeaderOffset) {
			extended_header = (const ATOM_PPLIB_EXTENDEDHEADER *)
					(((unsigned long)powerplay_table) +
					FUNC2(ptable3->usExtendendedHeaderOffset));
			if ((extended_header->usPPMTableOffset > 0) &&
				FUNC2(extended_header->usSize) >=
				    SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V5) {
				table_offset = FUNC2(extended_header->usPPMTableOffset);
				atom_ppm_table = (ATOM_PPLIB_PPM_Table *)
					(((unsigned long)powerplay_table) + table_offset);
				if (0 == FUNC1(hwmgr, atom_ppm_table))
					FUNC4(hwmgr->platform_descriptor.platformCaps,
						PHM_PlatformCaps_EnablePlatformPowerManagement);
			}
		}
	}
	return result;
}