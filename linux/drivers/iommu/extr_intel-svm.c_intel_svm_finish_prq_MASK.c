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
struct intel_iommu {int /*<<< orphan*/ * prq; scalar_t__ pr_irq; scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ DMAR_PQA_REG ; 
 scalar_t__ DMAR_PQH_REG ; 
 scalar_t__ DMAR_PQT_REG ; 
 int /*<<< orphan*/  PRQ_ORDER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

int FUNC4(struct intel_iommu *iommu)
{
	FUNC1(iommu->reg + DMAR_PQH_REG, 0ULL);
	FUNC1(iommu->reg + DMAR_PQT_REG, 0ULL);
	FUNC1(iommu->reg + DMAR_PQA_REG, 0ULL);

	if (iommu->pr_irq) {
		FUNC2(iommu->pr_irq, iommu);
		FUNC0(iommu->pr_irq);
		iommu->pr_irq = 0;
	}

	FUNC3((unsigned long)iommu->prq, PRQ_ORDER);
	iommu->prq = NULL;

	return 0;
}