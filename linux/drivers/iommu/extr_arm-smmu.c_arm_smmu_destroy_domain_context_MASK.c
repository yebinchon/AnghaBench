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
struct iommu_domain {scalar_t__ type; } ;
struct arm_smmu_cfg {size_t cbndx; size_t irptndx; } ;
struct arm_smmu_domain {int /*<<< orphan*/  pgtbl_ops; struct arm_smmu_cfg cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int* irqs; size_t num_global_irqs; int /*<<< orphan*/  context_map; int /*<<< orphan*/  dev; TYPE_1__* cbs; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cfg; } ;

/* Variables and functions */
 size_t INVALID_IRPTNDX ; 
 scalar_t__ IOMMU_DOMAIN_IDENTITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct arm_smmu_device*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct arm_smmu_domain* FUNC6 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC7(struct iommu_domain *domain)
{
	struct arm_smmu_domain *smmu_domain = FUNC6(domain);
	struct arm_smmu_device *smmu = smmu_domain->smmu;
	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
	int ret, irq;

	if (!smmu || domain->type == IOMMU_DOMAIN_IDENTITY)
		return;

	ret = FUNC1(smmu);
	if (ret < 0)
		return;

	/*
	 * Disable the context bank and free the page tables before freeing
	 * it.
	 */
	smmu->cbs[cfg->cbndx].cfg = NULL;
	FUNC3(smmu, cfg->cbndx);

	if (cfg->irptndx != INVALID_IRPTNDX) {
		irq = smmu->irqs[smmu->num_global_irqs + cfg->irptndx];
		FUNC4(smmu->dev, irq, domain);
	}

	FUNC5(smmu_domain->pgtbl_ops);
	FUNC0(smmu->context_map, cfg->cbndx);

	FUNC2(smmu);
}