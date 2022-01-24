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
struct msm_iommu_dev {int /*<<< orphan*/  base; } ;
struct msm_iommu_ctx_dev {int num_mids; int* mids; int num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct msm_iommu_dev *iommu,
			struct msm_iommu_ctx_dev *master)
{
	int mid, ctx, i;

	for (i = 0; i < master->num_mids; i++) {
		mid = master->mids[i];
		ctx = master->num;

		FUNC4(iommu->base, mid, 0);
		FUNC0(iommu->base, ctx, 0);

		/* Set VMID = 0 */
		FUNC6(iommu->base, mid, 0);

		/* Set the context number for that MID to this context */
		FUNC1(iommu->base, mid, ctx);

		/* Set MID associated with this context bank to 0*/
		FUNC2(iommu->base, ctx, 0);

		/* Set the ASID for TLB tagging for this context */
		FUNC3(iommu->base, ctx, ctx);

		/* Set security bit override to be Non-secure */
		FUNC5(iommu->base, mid, 3);
	}
}