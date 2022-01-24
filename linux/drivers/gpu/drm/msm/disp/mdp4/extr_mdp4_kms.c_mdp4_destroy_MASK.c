#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct msm_kms {struct msm_gem_address_space* aspace; } ;
struct msm_gem_address_space {TYPE_3__* mmu; } ;
struct mdp4_kms {scalar_t__ rpm_enabled; int /*<<< orphan*/  blank_cursor_bo; scalar_t__ blank_cursor_iova; TYPE_2__* dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct TYPE_5__ {struct device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* detach ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iommu_ports ; 
 int /*<<< orphan*/  FUNC2 (struct mdp4_kms*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct msm_gem_address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mdp4_kms* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct msm_kms*) ; 

__attribute__((used)) static void FUNC9(struct msm_kms *kms)
{
	struct mdp4_kms *mdp4_kms = FUNC7(FUNC8(kms));
	struct device *dev = mdp4_kms->dev->dev;
	struct msm_gem_address_space *aspace = kms->aspace;

	if (mdp4_kms->blank_cursor_iova)
		FUNC4(mdp4_kms->blank_cursor_bo, kms->aspace);
	FUNC1(mdp4_kms->blank_cursor_bo);

	if (aspace) {
		aspace->mmu->funcs->detach(aspace->mmu,
				iommu_ports, FUNC0(iommu_ports));
		FUNC3(aspace);
	}

	if (mdp4_kms->rpm_enabled)
		FUNC5(dev);

	FUNC2(mdp4_kms);
}