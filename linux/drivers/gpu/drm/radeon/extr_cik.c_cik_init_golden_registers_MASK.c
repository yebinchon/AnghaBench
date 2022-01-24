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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CHIP_BONAIRE 132 
#define  CHIP_HAWAII 131 
#define  CHIP_KABINI 130 
#define  CHIP_KAVERI 129 
#define  CHIP_MULLINS 128 
 int /*<<< orphan*/  bonaire_golden_common_registers ; 
 int /*<<< orphan*/  bonaire_golden_registers ; 
 int /*<<< orphan*/  bonaire_golden_spm_registers ; 
 int /*<<< orphan*/  bonaire_mgcg_cgcg_init ; 
 int /*<<< orphan*/  godavari_golden_registers ; 
 int /*<<< orphan*/  hawaii_golden_common_registers ; 
 int /*<<< orphan*/  hawaii_golden_registers ; 
 int /*<<< orphan*/  hawaii_golden_spm_registers ; 
 int /*<<< orphan*/  hawaii_mgcg_cgcg_init ; 
 int /*<<< orphan*/  kalindi_golden_common_registers ; 
 int /*<<< orphan*/  kalindi_golden_registers ; 
 int /*<<< orphan*/  kalindi_golden_spm_registers ; 
 int /*<<< orphan*/  kalindi_mgcg_cgcg_init ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  spectre_golden_common_registers ; 
 int /*<<< orphan*/  spectre_golden_registers ; 
 int /*<<< orphan*/  spectre_golden_spm_registers ; 
 int /*<<< orphan*/  spectre_mgcg_cgcg_init ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	switch (rdev->family) {
	case CHIP_BONAIRE:
		FUNC1(rdev,
						 bonaire_mgcg_cgcg_init,
						 (const u32)FUNC0(bonaire_mgcg_cgcg_init));
		FUNC1(rdev,
						 bonaire_golden_registers,
						 (const u32)FUNC0(bonaire_golden_registers));
		FUNC1(rdev,
						 bonaire_golden_common_registers,
						 (const u32)FUNC0(bonaire_golden_common_registers));
		FUNC1(rdev,
						 bonaire_golden_spm_registers,
						 (const u32)FUNC0(bonaire_golden_spm_registers));
		break;
	case CHIP_KABINI:
		FUNC1(rdev,
						 kalindi_mgcg_cgcg_init,
						 (const u32)FUNC0(kalindi_mgcg_cgcg_init));
		FUNC1(rdev,
						 kalindi_golden_registers,
						 (const u32)FUNC0(kalindi_golden_registers));
		FUNC1(rdev,
						 kalindi_golden_common_registers,
						 (const u32)FUNC0(kalindi_golden_common_registers));
		FUNC1(rdev,
						 kalindi_golden_spm_registers,
						 (const u32)FUNC0(kalindi_golden_spm_registers));
		break;
	case CHIP_MULLINS:
		FUNC1(rdev,
						 kalindi_mgcg_cgcg_init,
						 (const u32)FUNC0(kalindi_mgcg_cgcg_init));
		FUNC1(rdev,
						 godavari_golden_registers,
						 (const u32)FUNC0(godavari_golden_registers));
		FUNC1(rdev,
						 kalindi_golden_common_registers,
						 (const u32)FUNC0(kalindi_golden_common_registers));
		FUNC1(rdev,
						 kalindi_golden_spm_registers,
						 (const u32)FUNC0(kalindi_golden_spm_registers));
		break;
	case CHIP_KAVERI:
		FUNC1(rdev,
						 spectre_mgcg_cgcg_init,
						 (const u32)FUNC0(spectre_mgcg_cgcg_init));
		FUNC1(rdev,
						 spectre_golden_registers,
						 (const u32)FUNC0(spectre_golden_registers));
		FUNC1(rdev,
						 spectre_golden_common_registers,
						 (const u32)FUNC0(spectre_golden_common_registers));
		FUNC1(rdev,
						 spectre_golden_spm_registers,
						 (const u32)FUNC0(spectre_golden_spm_registers));
		break;
	case CHIP_HAWAII:
		FUNC1(rdev,
						 hawaii_mgcg_cgcg_init,
						 (const u32)FUNC0(hawaii_mgcg_cgcg_init));
		FUNC1(rdev,
						 hawaii_golden_registers,
						 (const u32)FUNC0(hawaii_golden_registers));
		FUNC1(rdev,
						 hawaii_golden_common_registers,
						 (const u32)FUNC0(hawaii_golden_common_registers));
		FUNC1(rdev,
						 hawaii_golden_spm_registers,
						 (const u32)FUNC0(hawaii_golden_spm_registers));
		break;
	default:
		break;
	}
}