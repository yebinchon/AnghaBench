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
#define  CHIP_HAINAN 132 
#define  CHIP_OLAND 131 
#define  CHIP_PITCAIRN 130 
#define  CHIP_TAHITI 129 
#define  CHIP_VERDE 128 
 int /*<<< orphan*/  hainan_golden_registers ; 
 int /*<<< orphan*/  hainan_golden_registers2 ; 
 int /*<<< orphan*/  hainan_mgcg_cgcg_init ; 
 int /*<<< orphan*/  oland_golden_registers ; 
 int /*<<< orphan*/  oland_golden_rlc_registers ; 
 int /*<<< orphan*/  oland_mgcg_cgcg_init ; 
 int /*<<< orphan*/  pitcairn_golden_registers ; 
 int /*<<< orphan*/  pitcairn_golden_rlc_registers ; 
 int /*<<< orphan*/  pitcairn_mgcg_cgcg_init ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  tahiti_golden_registers ; 
 int /*<<< orphan*/  tahiti_golden_registers2 ; 
 int /*<<< orphan*/  tahiti_golden_rlc_registers ; 
 int /*<<< orphan*/  tahiti_mgcg_cgcg_init ; 
 int /*<<< orphan*/  verde_golden_registers ; 
 int /*<<< orphan*/  verde_golden_rlc_registers ; 
 int /*<<< orphan*/  verde_mgcg_cgcg_init ; 
 int /*<<< orphan*/  verde_pg_init ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	switch (rdev->family) {
	case CHIP_TAHITI:
		FUNC1(rdev,
						 tahiti_golden_registers,
						 (const u32)FUNC0(tahiti_golden_registers));
		FUNC1(rdev,
						 tahiti_golden_rlc_registers,
						 (const u32)FUNC0(tahiti_golden_rlc_registers));
		FUNC1(rdev,
						 tahiti_mgcg_cgcg_init,
						 (const u32)FUNC0(tahiti_mgcg_cgcg_init));
		FUNC1(rdev,
						 tahiti_golden_registers2,
						 (const u32)FUNC0(tahiti_golden_registers2));
		break;
	case CHIP_PITCAIRN:
		FUNC1(rdev,
						 pitcairn_golden_registers,
						 (const u32)FUNC0(pitcairn_golden_registers));
		FUNC1(rdev,
						 pitcairn_golden_rlc_registers,
						 (const u32)FUNC0(pitcairn_golden_rlc_registers));
		FUNC1(rdev,
						 pitcairn_mgcg_cgcg_init,
						 (const u32)FUNC0(pitcairn_mgcg_cgcg_init));
		break;
	case CHIP_VERDE:
		FUNC1(rdev,
						 verde_golden_registers,
						 (const u32)FUNC0(verde_golden_registers));
		FUNC1(rdev,
						 verde_golden_rlc_registers,
						 (const u32)FUNC0(verde_golden_rlc_registers));
		FUNC1(rdev,
						 verde_mgcg_cgcg_init,
						 (const u32)FUNC0(verde_mgcg_cgcg_init));
		FUNC1(rdev,
						 verde_pg_init,
						 (const u32)FUNC0(verde_pg_init));
		break;
	case CHIP_OLAND:
		FUNC1(rdev,
						 oland_golden_registers,
						 (const u32)FUNC0(oland_golden_registers));
		FUNC1(rdev,
						 oland_golden_rlc_registers,
						 (const u32)FUNC0(oland_golden_rlc_registers));
		FUNC1(rdev,
						 oland_mgcg_cgcg_init,
						 (const u32)FUNC0(oland_mgcg_cgcg_init));
		break;
	case CHIP_HAINAN:
		FUNC1(rdev,
						 hainan_golden_registers,
						 (const u32)FUNC0(hainan_golden_registers));
		FUNC1(rdev,
						 hainan_golden_registers2,
						 (const u32)FUNC0(hainan_golden_registers2));
		FUNC1(rdev,
						 hainan_mgcg_cgcg_init,
						 (const u32)FUNC0(hainan_mgcg_cgcg_init));
		break;
	default:
		break;
	}
}