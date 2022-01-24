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
struct mtk_iommu_domain {int /*<<< orphan*/  iop; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_iommu_domain*) ; 
 struct mtk_iommu_domain* FUNC3 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC4(struct iommu_domain *domain)
{
	struct mtk_iommu_domain *dom = FUNC3(domain);

	FUNC0(dom->iop);
	FUNC1(domain);
	FUNC2(FUNC3(domain));
}