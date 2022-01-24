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
typedef  int u32 ;
struct amd_iommu {scalar_t__ mmio_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AMD_IOMMU_INT_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MMIO_STATUS_EVT_INT_MASK ; 
 int MMIO_STATUS_GALOG_INT_MASK ; 
 scalar_t__ MMIO_STATUS_OFFSET ; 
 int MMIO_STATUS_PPR_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

irqreturn_t FUNC6(int irq, void *data)
{
	struct amd_iommu *iommu = (struct amd_iommu *) data;
	u32 status = FUNC4(iommu->mmio_base + MMIO_STATUS_OFFSET);

	while (status & AMD_IOMMU_INT_MASK) {
		/* Enable EVT and PPR and GA interrupts again */
		FUNC5(AMD_IOMMU_INT_MASK,
			iommu->mmio_base + MMIO_STATUS_OFFSET);

		if (status & MMIO_STATUS_EVT_INT_MASK) {
			FUNC3("Processing IOMMU Event Log\n");
			FUNC0(iommu);
		}

		if (status & MMIO_STATUS_PPR_INT_MASK) {
			FUNC3("Processing IOMMU PPR Log\n");
			FUNC2(iommu);
		}

#ifdef CONFIG_IRQ_REMAP
		if (status & MMIO_STATUS_GALOG_INT_MASK) {
			pr_devel("Processing IOMMU GA Log\n");
			iommu_poll_ga_log(iommu);
		}
#endif

		/*
		 * Hardware bug: ERBT1312
		 * When re-enabling interrupt (by writing 1
		 * to clear the bit), the hardware might also try to set
		 * the interrupt bit in the event status register.
		 * In this scenario, the bit will be set, and disable
		 * subsequent interrupts.
		 *
		 * Workaround: The IOMMU driver should read back the
		 * status register and check if the interrupt bits are cleared.
		 * If not, driver will need to go through the interrupt handler
		 * again and re-clear the bits
		 */
		status = FUNC4(iommu->mmio_base + MMIO_STATUS_OFFSET);
	}
	return IRQ_HANDLED;
}