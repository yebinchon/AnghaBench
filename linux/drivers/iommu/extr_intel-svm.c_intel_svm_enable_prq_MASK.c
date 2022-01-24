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
struct page {int dummy; } ;
struct intel_iommu {int seq_id; int pr_irq; int /*<<< orphan*/ * prq; scalar_t__ reg; int /*<<< orphan*/  name; int /*<<< orphan*/  prq_name; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ DMAR_PQA_REG ; 
 scalar_t__ DMAR_PQH_REG ; 
 scalar_t__ DMAR_PQT_REG ; 
 int DMAR_UNITS_SUPPORTED ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 unsigned long long PRQ_ORDER ; 
 int __GFP_ZERO ; 
 struct page* FUNC0 (int,unsigned long long) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long long) ; 
 int /*<<< orphan*/ * FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prq_event_thread ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,int) ; 
 unsigned long long FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct intel_iommu *iommu)
{
	struct page *pages;
	int irq, ret;

	pages = FUNC0(GFP_KERNEL | __GFP_ZERO, PRQ_ORDER);
	if (!pages) {
		FUNC7("IOMMU: %s: Failed to allocate page request queue\n",
			iommu->name);
		return -ENOMEM;
	}
	iommu->prq = FUNC5(pages);

	irq = FUNC1(DMAR_UNITS_SUPPORTED + iommu->seq_id, iommu->node, iommu);
	if (irq <= 0) {
		FUNC6("IOMMU: %s: Failed to create IRQ vector for page request queue\n",
		       iommu->name);
		ret = -EINVAL;
	err:
		FUNC4((unsigned long)iommu->prq, PRQ_ORDER);
		iommu->prq = NULL;
		return ret;
	}
	iommu->pr_irq = irq;

	FUNC9(iommu->prq_name, sizeof(iommu->prq_name), "dmar%d-prq", iommu->seq_id);

	ret = FUNC8(irq, NULL, prq_event_thread, IRQF_ONESHOT,
				   iommu->prq_name, iommu);
	if (ret) {
		FUNC6("IOMMU: %s: Failed to request IRQ for page request queue\n",
		       iommu->name);
		FUNC2(irq);
		iommu->pr_irq = 0;
		goto err;
	}
	FUNC3(iommu->reg + DMAR_PQH_REG, 0ULL);
	FUNC3(iommu->reg + DMAR_PQT_REG, 0ULL);
	FUNC3(iommu->reg + DMAR_PQA_REG, FUNC10(iommu->prq) | PRQ_ORDER);

	return 0;
}