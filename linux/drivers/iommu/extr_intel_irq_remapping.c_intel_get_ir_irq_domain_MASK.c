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
struct irq_domain {int dummy; } ;
struct irq_alloc_info {int type; int /*<<< orphan*/  msi_dev; int /*<<< orphan*/  hpet_id; int /*<<< orphan*/  ioapic_id; } ;
struct intel_iommu {struct irq_domain* ir_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  X86_IRQ_ALLOC_TYPE_HPET 131 
#define  X86_IRQ_ALLOC_TYPE_IOAPIC 130 
#define  X86_IRQ_ALLOC_TYPE_MSI 129 
#define  X86_IRQ_ALLOC_TYPE_MSIX 128 
 struct intel_iommu* FUNC1 (int /*<<< orphan*/ ) ; 
 struct intel_iommu* FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_iommu* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct irq_domain *FUNC4(struct irq_alloc_info *info)
{
	struct intel_iommu *iommu = NULL;

	if (!info)
		return NULL;

	switch (info->type) {
	case X86_IRQ_ALLOC_TYPE_IOAPIC:
		iommu = FUNC3(info->ioapic_id);
		break;
	case X86_IRQ_ALLOC_TYPE_HPET:
		iommu = FUNC2(info->hpet_id);
		break;
	case X86_IRQ_ALLOC_TYPE_MSI:
	case X86_IRQ_ALLOC_TYPE_MSIX:
		iommu = FUNC1(info->msi_dev);
		break;
	default:
		FUNC0(1);
		break;
	}

	return iommu ? iommu->ir_domain : NULL;
}