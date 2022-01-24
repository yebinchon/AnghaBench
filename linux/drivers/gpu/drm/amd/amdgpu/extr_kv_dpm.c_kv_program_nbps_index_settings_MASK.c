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
typedef  int u32 ;
struct kv_ps {int dpm0_pg_nb_ps_lo; int dpm0_pg_nb_ps_hi; int dpmx_nb_ps_lo; int dpmx_nb_ps_hi; } ;
struct TYPE_2__ {scalar_t__ nb_dpm_enable; } ;
struct kv_power_info {TYPE_1__ sys_info; } ;
struct amdgpu_ps {int dummy; } ;
struct amdgpu_device {scalar_t__ asic_type; } ;

/* Variables and functions */
 scalar_t__ CHIP_KABINI ; 
 scalar_t__ CHIP_MULLINS ; 
 int NB_DPM_CONFIG_1__Dpm0PgNbPsHi_MASK ; 
 int NB_DPM_CONFIG_1__Dpm0PgNbPsHi__SHIFT ; 
 int NB_DPM_CONFIG_1__Dpm0PgNbPsLo_MASK ; 
 int NB_DPM_CONFIG_1__Dpm0PgNbPsLo__SHIFT ; 
 int NB_DPM_CONFIG_1__DpmXNbPsHi_MASK ; 
 int NB_DPM_CONFIG_1__DpmXNbPsHi__SHIFT ; 
 int NB_DPM_CONFIG_1__DpmXNbPsLo_MASK ; 
 int NB_DPM_CONFIG_1__DpmXNbPsLo__SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ixNB_DPM_CONFIG_1 ; 
 struct kv_power_info* FUNC2 (struct amdgpu_device*) ; 
 struct kv_ps* FUNC3 (struct amdgpu_ps*) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev,
					   struct amdgpu_ps *new_rps)
{
	struct kv_ps *new_ps = FUNC3(new_rps);
	struct kv_power_info *pi = FUNC2(adev);
	u32 nbdpmconfig1;

	if (adev->asic_type == CHIP_KABINI || adev->asic_type == CHIP_MULLINS)
		return;

	if (pi->sys_info.nb_dpm_enable) {
		nbdpmconfig1 = FUNC0(ixNB_DPM_CONFIG_1);
		nbdpmconfig1 &= ~(NB_DPM_CONFIG_1__Dpm0PgNbPsLo_MASK |
				NB_DPM_CONFIG_1__Dpm0PgNbPsHi_MASK |
				NB_DPM_CONFIG_1__DpmXNbPsLo_MASK |
				NB_DPM_CONFIG_1__DpmXNbPsHi_MASK);
		nbdpmconfig1 |= (new_ps->dpm0_pg_nb_ps_lo << NB_DPM_CONFIG_1__Dpm0PgNbPsLo__SHIFT) |
				(new_ps->dpm0_pg_nb_ps_hi << NB_DPM_CONFIG_1__Dpm0PgNbPsHi__SHIFT) |
				(new_ps->dpmx_nb_ps_lo << NB_DPM_CONFIG_1__DpmXNbPsLo__SHIFT) |
				(new_ps->dpmx_nb_ps_hi << NB_DPM_CONFIG_1__DpmXNbPsHi__SHIFT);
		FUNC1(ixNB_DPM_CONFIG_1, nbdpmconfig1);
	}
}