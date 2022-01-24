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
#define  CHIP_BARTS 138 
#define  CHIP_CAICOS 137 
#define  CHIP_CEDAR 136 
#define  CHIP_CYPRESS 135 
#define  CHIP_HEMLOCK 134 
#define  CHIP_JUNIPER 133 
#define  CHIP_PALM 132 
#define  CHIP_REDWOOD 131 
#define  CHIP_SUMO 130 
#define  CHIP_SUMO2 129 
#define  CHIP_TURKS 128 
 int /*<<< orphan*/  barts_golden_registers ; 
 int /*<<< orphan*/  caicos_golden_registers ; 
 int /*<<< orphan*/  cedar_golden_registers ; 
 int /*<<< orphan*/  cedar_mgcg_init ; 
 int /*<<< orphan*/  cypress_mgcg_init ; 
 int /*<<< orphan*/  evergreen_golden_registers ; 
 int /*<<< orphan*/  evergreen_golden_registers2 ; 
 int /*<<< orphan*/  juniper_mgcg_init ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  redwood_mgcg_init ; 
 int /*<<< orphan*/  sumo_golden_registers ; 
 int /*<<< orphan*/  supersumo_golden_registers ; 
 int /*<<< orphan*/  turks_golden_registers ; 
 int /*<<< orphan*/  wrestler_golden_registers ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	switch (rdev->family) {
	case CHIP_CYPRESS:
	case CHIP_HEMLOCK:
		FUNC1(rdev,
						 evergreen_golden_registers,
						 (const u32)FUNC0(evergreen_golden_registers));
		FUNC1(rdev,
						 evergreen_golden_registers2,
						 (const u32)FUNC0(evergreen_golden_registers2));
		FUNC1(rdev,
						 cypress_mgcg_init,
						 (const u32)FUNC0(cypress_mgcg_init));
		break;
	case CHIP_JUNIPER:
		FUNC1(rdev,
						 evergreen_golden_registers,
						 (const u32)FUNC0(evergreen_golden_registers));
		FUNC1(rdev,
						 evergreen_golden_registers2,
						 (const u32)FUNC0(evergreen_golden_registers2));
		FUNC1(rdev,
						 juniper_mgcg_init,
						 (const u32)FUNC0(juniper_mgcg_init));
		break;
	case CHIP_REDWOOD:
		FUNC1(rdev,
						 evergreen_golden_registers,
						 (const u32)FUNC0(evergreen_golden_registers));
		FUNC1(rdev,
						 evergreen_golden_registers2,
						 (const u32)FUNC0(evergreen_golden_registers2));
		FUNC1(rdev,
						 redwood_mgcg_init,
						 (const u32)FUNC0(redwood_mgcg_init));
		break;
	case CHIP_CEDAR:
		FUNC1(rdev,
						 cedar_golden_registers,
						 (const u32)FUNC0(cedar_golden_registers));
		FUNC1(rdev,
						 evergreen_golden_registers2,
						 (const u32)FUNC0(evergreen_golden_registers2));
		FUNC1(rdev,
						 cedar_mgcg_init,
						 (const u32)FUNC0(cedar_mgcg_init));
		break;
	case CHIP_PALM:
		FUNC1(rdev,
						 wrestler_golden_registers,
						 (const u32)FUNC0(wrestler_golden_registers));
		break;
	case CHIP_SUMO:
		FUNC1(rdev,
						 supersumo_golden_registers,
						 (const u32)FUNC0(supersumo_golden_registers));
		break;
	case CHIP_SUMO2:
		FUNC1(rdev,
						 supersumo_golden_registers,
						 (const u32)FUNC0(supersumo_golden_registers));
		FUNC1(rdev,
						 sumo_golden_registers,
						 (const u32)FUNC0(sumo_golden_registers));
		break;
	case CHIP_BARTS:
		FUNC1(rdev,
						 barts_golden_registers,
						 (const u32)FUNC0(barts_golden_registers));
		break;
	case CHIP_TURKS:
		FUNC1(rdev,
						 turks_golden_registers,
						 (const u32)FUNC0(turks_golden_registers));
		break;
	case CHIP_CAICOS:
		FUNC1(rdev,
						 caicos_golden_registers,
						 (const u32)FUNC0(caicos_golden_registers));
		break;
	default:
		break;
	}
}