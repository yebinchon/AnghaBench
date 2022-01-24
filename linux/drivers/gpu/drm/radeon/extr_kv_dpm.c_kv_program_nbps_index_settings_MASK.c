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
struct radeon_ps {int dummy; } ;
struct radeon_device {scalar_t__ family; } ;
struct kv_ps {int /*<<< orphan*/  dpmx_nb_ps_hi; int /*<<< orphan*/  dpmx_nb_ps_lo; int /*<<< orphan*/  dpm0_pg_nb_ps_hi; int /*<<< orphan*/  dpm0_pg_nb_ps_lo; } ;
struct TYPE_2__ {scalar_t__ nb_dpm_enable; } ;
struct kv_power_info {TYPE_1__ sys_info; } ;

/* Variables and functions */
 scalar_t__ CHIP_KABINI ; 
 scalar_t__ CHIP_MULLINS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int Dpm0PgNbPsHi_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int Dpm0PgNbPsLo_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int DpmXNbPsHi_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int DpmXNbPsLo_MASK ; 
 int /*<<< orphan*/  NB_DPM_CONFIG_1 ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct kv_power_info* FUNC6 (struct radeon_device*) ; 
 struct kv_ps* FUNC7 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC8(struct radeon_device *rdev,
					   struct radeon_ps *new_rps)
{
	struct kv_ps *new_ps = FUNC7(new_rps);
	struct kv_power_info *pi = FUNC6(rdev);
	u32 nbdpmconfig1;

	if (rdev->family == CHIP_KABINI || rdev->family == CHIP_MULLINS)
		return;

	if (pi->sys_info.nb_dpm_enable) {
		nbdpmconfig1 = FUNC4(NB_DPM_CONFIG_1);
		nbdpmconfig1 &= ~(Dpm0PgNbPsLo_MASK | Dpm0PgNbPsHi_MASK |
				  DpmXNbPsLo_MASK | DpmXNbPsHi_MASK);
		nbdpmconfig1 |= (FUNC1(new_ps->dpm0_pg_nb_ps_lo) |
				 FUNC0(new_ps->dpm0_pg_nb_ps_hi) |
				 FUNC3(new_ps->dpmx_nb_ps_lo) |
				 FUNC2(new_ps->dpmx_nb_ps_hi));
		FUNC5(NB_DPM_CONFIG_1, nbdpmconfig1);
	}
}