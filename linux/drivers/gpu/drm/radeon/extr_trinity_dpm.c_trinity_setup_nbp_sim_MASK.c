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
struct trinity_ps {int /*<<< orphan*/  DpmXNbPsHi; int /*<<< orphan*/  DpmXNbPsLo; int /*<<< orphan*/  Dpm0PgNbPsHi; int /*<<< orphan*/  Dpm0PgNbPsLo; } ;
struct TYPE_2__ {scalar_t__ nb_dpm_enable; } ;
struct trinity_power_info {TYPE_1__ sys_info; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int Dpm0PgNbPsHi_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int Dpm0PgNbPsLo_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int DpmXNbPsHi_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int DpmXNbPsLo_MASK ; 
 int /*<<< orphan*/  NB_PSTATE_CONFIG ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct trinity_power_info* FUNC6 (struct radeon_device*) ; 
 struct trinity_ps* FUNC7 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC8(struct radeon_device *rdev,
				  struct radeon_ps *rps)
{
	struct trinity_power_info *pi = FUNC6(rdev);
	struct trinity_ps *new_ps = FUNC7(rps);
	u32 nbpsconfig;

	if (pi->sys_info.nb_dpm_enable) {
		nbpsconfig = FUNC4(NB_PSTATE_CONFIG);
		nbpsconfig &= ~(Dpm0PgNbPsLo_MASK | Dpm0PgNbPsHi_MASK | DpmXNbPsLo_MASK | DpmXNbPsHi_MASK);
		nbpsconfig |= (FUNC1(new_ps->Dpm0PgNbPsLo) |
			       FUNC0(new_ps->Dpm0PgNbPsHi) |
			       FUNC3(new_ps->DpmXNbPsLo) |
			       FUNC2(new_ps->DpmXNbPsHi));
		FUNC5(NB_PSTATE_CONFIG, nbpsconfig);
	}
}