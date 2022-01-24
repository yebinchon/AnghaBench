#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msm_kms {struct msm_gem_address_space* aspace; } ;
struct msm_gem_address_space {TYPE_2__* mmu; } ;
struct mdp5_kms {int num_hwmixers; int num_hwpipes; int /*<<< orphan*/ * hwpipes; int /*<<< orphan*/ * hwmixers; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* detach ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iommu_ports ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mdp5_kms* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_kms*) ; 

__attribute__((used)) static void FUNC7(struct msm_kms *kms)
{
	struct mdp5_kms *mdp5_kms = FUNC5(FUNC6(kms));
	struct msm_gem_address_space *aspace = kms->aspace;
	int i;

	for (i = 0; i < mdp5_kms->num_hwmixers; i++)
		FUNC1(mdp5_kms->hwmixers[i]);

	for (i = 0; i < mdp5_kms->num_hwpipes; i++)
		FUNC2(mdp5_kms->hwpipes[i]);

	if (aspace) {
		aspace->mmu->funcs->detach(aspace->mmu,
				iommu_ports, FUNC0(iommu_ports));
		FUNC3(aspace);
	}
}