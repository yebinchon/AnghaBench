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
typedef  scalar_t__ u32 ;
struct omap_iommu_domain {int /*<<< orphan*/  dev; } ;
struct omap_iommu {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MMU_IRQENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*,scalar_t__,...) ; 
 scalar_t__ FUNC1 (struct omap_iommu*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__* FUNC4 (struct omap_iommu*,scalar_t__) ; 
 scalar_t__* FUNC5 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct iommu_domain*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct omap_iommu_domain* FUNC7 (struct iommu_domain*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	u32 da, errs;
	u32 *iopgd, *iopte;
	struct omap_iommu *obj = data;
	struct iommu_domain *domain = obj->domain;
	struct omap_iommu_domain *omap_domain = FUNC7(domain);

	if (!omap_domain->dev)
		return IRQ_NONE;

	errs = FUNC1(obj, &da);
	if (errs == 0)
		return IRQ_HANDLED;

	/* Fault callback or TLB/PTE Dynamic loading */
	if (!FUNC6(domain, obj->dev, da, 0))
		return IRQ_HANDLED;

	FUNC2(obj, 0, MMU_IRQENABLE);

	iopgd = FUNC4(obj, da);

	if (!FUNC3(*iopgd)) {
		FUNC0(obj->dev, "%s: errs:0x%08x da:0x%08x pgd:0x%p *pgd:px%08x\n",
			obj->name, errs, da, iopgd, *iopgd);
		return IRQ_NONE;
	}

	iopte = FUNC5(iopgd, da);

	FUNC0(obj->dev, "%s: errs:0x%08x da:0x%08x pgd:0x%p *pgd:0x%08x pte:0x%p *pte:0x%08x\n",
		obj->name, errs, da, iopgd, *iopgd, iopte, *iopte);

	return IRQ_NONE;
}