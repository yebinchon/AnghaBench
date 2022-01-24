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
struct hubbub {int dummy; } ;
struct dcn20_hubbub {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCHVM_CLK_CTRL ; 
 int /*<<< orphan*/  DCHVM_CTRL0 ; 
 int /*<<< orphan*/  DCHVM_RIOMMU_CTRL0 ; 
 int /*<<< orphan*/  DCHVM_RIOMMU_STAT0 ; 
 int /*<<< orphan*/  HOSTVM_INIT_REQ ; 
 int /*<<< orphan*/  HOSTVM_POWERSTATUS ; 
 int /*<<< orphan*/  HOSTVM_PREFETCH_DONE ; 
 int /*<<< orphan*/  HOSTVM_PREFETCH_REQ ; 
 int /*<<< orphan*/  HVM_DCFCLK_G_GATE_DIS ; 
 int /*<<< orphan*/  HVM_DCFCLK_R_GATE_DIS ; 
 int /*<<< orphan*/  HVM_DISPCLK_G_GATE_DIS ; 
 int /*<<< orphan*/  HVM_DISPCLK_R_GATE_DIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  RIOMMU_ACTIVE ; 
 struct dcn20_hubbub* FUNC3 (struct hubbub*) ; 

void FUNC4(struct hubbub *hubbub)
{
	struct dcn20_hubbub *hubbub1 = FUNC3(hubbub);

	//Init DCHVM block
	FUNC0(DCHVM_CTRL0, HOSTVM_INIT_REQ, 1);

	//Poll until RIOMMU_ACTIVE = 1
	//TODO: Figure out interval us and retry count
	FUNC2(DCHVM_RIOMMU_STAT0, RIOMMU_ACTIVE, 1, 5, 100);

	//Reflect the power status of DCHUBBUB
	FUNC0(DCHVM_RIOMMU_CTRL0, HOSTVM_POWERSTATUS, 1);

	//Start rIOMMU prefetching
	FUNC0(DCHVM_RIOMMU_CTRL0, HOSTVM_PREFETCH_REQ, 1);

	// Enable dynamic clock gating
	FUNC1(DCHVM_CLK_CTRL,
					HVM_DISPCLK_R_GATE_DIS, 0,
					HVM_DISPCLK_G_GATE_DIS, 0,
					HVM_DCFCLK_R_GATE_DIS, 0,
					HVM_DCFCLK_G_GATE_DIS, 0);

	//Poll until HOSTVM_PREFETCH_DONE = 1
	//TODO: Figure out interval us and retry count
	FUNC2(DCHVM_RIOMMU_STAT0, HOSTVM_PREFETCH_DONE, 1, 5, 100);
}