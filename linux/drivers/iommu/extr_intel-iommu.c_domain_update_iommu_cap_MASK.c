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
struct dmar_domain {int /*<<< orphan*/  iommu_superpage; int /*<<< orphan*/  iommu_snooping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dmar_domain *domain)
{
	FUNC0(domain);
	domain->iommu_snooping = FUNC1(NULL);
	domain->iommu_superpage = FUNC2(NULL);
}