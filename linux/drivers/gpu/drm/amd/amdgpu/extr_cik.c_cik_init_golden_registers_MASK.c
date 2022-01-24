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
struct amdgpu_device {int asic_type; int /*<<< orphan*/  grbm_idx_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CHIP_BONAIRE 132 
#define  CHIP_HAWAII 131 
#define  CHIP_KABINI 130 
#define  CHIP_KAVERI 129 
#define  CHIP_MULLINS 128 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spectre_golden_common_registers ; 
 int /*<<< orphan*/  spectre_golden_registers ; 
 int /*<<< orphan*/  spectre_golden_spm_registers ; 
 int /*<<< orphan*/  spectre_mgcg_cgcg_init ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	/* Some of the registers might be dependent on GRBM_GFX_INDEX */
	FUNC2(&adev->grbm_idx_mutex);

	switch (adev->asic_type) {
	case CHIP_BONAIRE:
		FUNC1(adev,
							bonaire_mgcg_cgcg_init,
							FUNC0(bonaire_mgcg_cgcg_init));
		FUNC1(adev,
							bonaire_golden_registers,
							FUNC0(bonaire_golden_registers));
		FUNC1(adev,
							bonaire_golden_common_registers,
							FUNC0(bonaire_golden_common_registers));
		FUNC1(adev,
							bonaire_golden_spm_registers,
							FUNC0(bonaire_golden_spm_registers));
		break;
	case CHIP_KABINI:
		FUNC1(adev,
							kalindi_mgcg_cgcg_init,
							FUNC0(kalindi_mgcg_cgcg_init));
		FUNC1(adev,
							kalindi_golden_registers,
							FUNC0(kalindi_golden_registers));
		FUNC1(adev,
							kalindi_golden_common_registers,
							FUNC0(kalindi_golden_common_registers));
		FUNC1(adev,
							kalindi_golden_spm_registers,
							FUNC0(kalindi_golden_spm_registers));
		break;
	case CHIP_MULLINS:
		FUNC1(adev,
							kalindi_mgcg_cgcg_init,
							FUNC0(kalindi_mgcg_cgcg_init));
		FUNC1(adev,
							godavari_golden_registers,
							FUNC0(godavari_golden_registers));
		FUNC1(adev,
							kalindi_golden_common_registers,
							FUNC0(kalindi_golden_common_registers));
		FUNC1(adev,
							kalindi_golden_spm_registers,
							FUNC0(kalindi_golden_spm_registers));
		break;
	case CHIP_KAVERI:
		FUNC1(adev,
							spectre_mgcg_cgcg_init,
							FUNC0(spectre_mgcg_cgcg_init));
		FUNC1(adev,
							spectre_golden_registers,
							FUNC0(spectre_golden_registers));
		FUNC1(adev,
							spectre_golden_common_registers,
							FUNC0(spectre_golden_common_registers));
		FUNC1(adev,
							spectre_golden_spm_registers,
							FUNC0(spectre_golden_spm_registers));
		break;
	case CHIP_HAWAII:
		FUNC1(adev,
							hawaii_mgcg_cgcg_init,
							FUNC0(hawaii_mgcg_cgcg_init));
		FUNC1(adev,
							hawaii_golden_registers,
							FUNC0(hawaii_golden_registers));
		FUNC1(adev,
							hawaii_golden_common_registers,
							FUNC0(hawaii_golden_common_registers));
		FUNC1(adev,
							hawaii_golden_spm_registers,
							FUNC0(hawaii_golden_spm_registers));
		break;
	default:
		break;
	}
	FUNC3(&adev->grbm_idx_mutex);
}