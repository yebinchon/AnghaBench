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
struct msi_msg {int address_lo; int /*<<< orphan*/  address_hi; } ;
struct msi_desc {int dummy; } ;
struct iommu_domain {int /*<<< orphan*/  iova_cookie; } ;
struct iommu_dma_msi_page {int /*<<< orphan*/  iova; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct iommu_domain* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct iommu_dma_msi_page* FUNC4 (struct msi_desc*) ; 
 struct device* FUNC5 (struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct msi_desc *desc,
			       struct msi_msg *msg)
{
	struct device *dev = FUNC5(desc);
	const struct iommu_domain *domain = FUNC2(dev);
	const struct iommu_dma_msi_page *msi_page;

	msi_page = FUNC4(desc);

	if (!domain || !domain->iova_cookie || FUNC0(!msi_page))
		return;

	msg->address_hi = FUNC6(msi_page->iova);
	msg->address_lo &= FUNC1(domain->iova_cookie) - 1;
	msg->address_lo += FUNC3(msi_page->iova);
}