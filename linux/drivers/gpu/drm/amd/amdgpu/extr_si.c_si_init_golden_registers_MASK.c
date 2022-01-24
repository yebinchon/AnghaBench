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
struct amdgpu_device {int asic_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  CHIP_HAINAN 132 
#define  CHIP_OLAND 131 
#define  CHIP_PITCAIRN 130 
#define  CHIP_TAHITI 129 
#define  CHIP_VERDE 128 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hainan_golden_registers ; 
 int /*<<< orphan*/  hainan_golden_registers2 ; 
 int /*<<< orphan*/  hainan_mgcg_cgcg_init ; 
 int /*<<< orphan*/  oland_golden_registers ; 
 int /*<<< orphan*/  oland_golden_rlc_registers ; 
 int /*<<< orphan*/  oland_mgcg_cgcg_init ; 
 int /*<<< orphan*/  pitcairn_golden_registers ; 
 int /*<<< orphan*/  pitcairn_golden_rlc_registers ; 
 int /*<<< orphan*/  pitcairn_mgcg_cgcg_init ; 
 int /*<<< orphan*/  tahiti_golden_registers ; 
 int /*<<< orphan*/  tahiti_golden_registers2 ; 
 int /*<<< orphan*/  tahiti_golden_rlc_registers ; 
 int /*<<< orphan*/  tahiti_mgcg_cgcg_init ; 
 int /*<<< orphan*/  verde_golden_registers ; 
 int /*<<< orphan*/  verde_golden_rlc_registers ; 
 int /*<<< orphan*/  verde_mgcg_cgcg_init ; 
 int /*<<< orphan*/  verde_pg_init ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	switch (adev->asic_type) {
	case CHIP_TAHITI:
		FUNC2(adev,
							tahiti_golden_registers,
							FUNC0(tahiti_golden_registers));
		FUNC2(adev,
							tahiti_golden_rlc_registers,
							FUNC0(tahiti_golden_rlc_registers));
		FUNC2(adev,
							tahiti_mgcg_cgcg_init,
							FUNC0(tahiti_mgcg_cgcg_init));
		FUNC2(adev,
							tahiti_golden_registers2,
							FUNC0(tahiti_golden_registers2));
		break;
	case CHIP_PITCAIRN:
		FUNC2(adev,
							pitcairn_golden_registers,
							FUNC0(pitcairn_golden_registers));
		FUNC2(adev,
							pitcairn_golden_rlc_registers,
							FUNC0(pitcairn_golden_rlc_registers));
		FUNC2(adev,
							pitcairn_mgcg_cgcg_init,
							FUNC0(pitcairn_mgcg_cgcg_init));
		break;
	case CHIP_VERDE:
		FUNC2(adev,
							verde_golden_registers,
							FUNC0(verde_golden_registers));
		FUNC2(adev,
							verde_golden_rlc_registers,
							FUNC0(verde_golden_rlc_registers));
		FUNC2(adev,
							verde_mgcg_cgcg_init,
							FUNC0(verde_mgcg_cgcg_init));
		FUNC2(adev,
							verde_pg_init,
							FUNC0(verde_pg_init));
		break;
	case CHIP_OLAND:
		FUNC2(adev,
							oland_golden_registers,
							FUNC0(oland_golden_registers));
		FUNC2(adev,
							oland_golden_rlc_registers,
							FUNC0(oland_golden_rlc_registers));
		FUNC2(adev,
							oland_mgcg_cgcg_init,
							FUNC0(oland_mgcg_cgcg_init));
		break;
	case CHIP_HAINAN:
		FUNC2(adev,
							hainan_golden_registers,
							FUNC0(hainan_golden_registers));
		FUNC2(adev,
							hainan_golden_registers2,
							FUNC0(hainan_golden_registers2));
		FUNC2(adev,
							hainan_mgcg_cgcg_init,
							FUNC0(hainan_mgcg_cgcg_init));
		break;


	default:
		FUNC1();
	}
}