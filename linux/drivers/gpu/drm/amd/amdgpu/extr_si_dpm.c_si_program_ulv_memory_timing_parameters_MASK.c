#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct si_ulv_param {int /*<<< orphan*/  volt_change_delay; int /*<<< orphan*/  pl; } ;
struct si_power_info {int /*<<< orphan*/  sram_end; scalar_t__ arb_table_start; struct si_ulv_param ulv; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SMC_SIslands_MCArbDramTimingRegisterSet ;

/* Variables and functions */
 int SISLANDS_ULV_STATE_ARB_INDEX ; 
 int /*<<< orphan*/  SI_SMC_SOFT_REGISTER_ulv_volt_change_delay ; 
 int /*<<< orphan*/  SMC_SIslands_MCArbDramTimingRegisters ; 
 int FUNC0 (struct amdgpu_device*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct si_power_info* FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	struct si_power_info *si_pi = FUNC2(adev);
	struct si_ulv_param *ulv = &si_pi->ulv;
	SMC_SIslands_MCArbDramTimingRegisterSet arb_regs = { 0 };
	int ret;

	ret = FUNC3(adev, &ulv->pl,
						   &arb_regs);
	if (ret)
		return ret;

	FUNC4(adev, SI_SMC_SOFT_REGISTER_ulv_volt_change_delay,
				   ulv->volt_change_delay);

	ret = FUNC0(adev,
					  si_pi->arb_table_start +
					  FUNC1(SMC_SIslands_MCArbDramTimingRegisters, data) +
					  sizeof(SMC_SIslands_MCArbDramTimingRegisterSet) * SISLANDS_ULV_STATE_ARB_INDEX,
					  (u8 *)&arb_regs,
					  sizeof(SMC_SIslands_MCArbDramTimingRegisterSet),
					  si_pi->sram_end);

	return ret;
}