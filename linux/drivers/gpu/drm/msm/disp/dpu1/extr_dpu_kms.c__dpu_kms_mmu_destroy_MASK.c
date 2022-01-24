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
struct msm_mmu {TYPE_1__* funcs; } ;
struct TYPE_5__ {TYPE_3__* aspace; } ;
struct dpu_kms {TYPE_2__ base; } ;
struct TYPE_6__ {struct msm_mmu* mmu; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* detach ) (struct msm_mmu*,char const**,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ iommu_ports ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_mmu*,char const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dpu_kms *dpu_kms)
{
	struct msm_mmu *mmu;

	if (!dpu_kms->base.aspace)
		return;

	mmu = dpu_kms->base.aspace->mmu;

	mmu->funcs->detach(mmu, (const char **)iommu_ports,
			FUNC0(iommu_ports));
	FUNC1(dpu_kms->base.aspace);

	dpu_kms->base.aspace = NULL;
}