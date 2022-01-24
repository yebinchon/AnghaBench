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
struct iommu_domain {int dummy; } ;
struct ipmmu_vmsa_domain {struct iommu_domain io_domain; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ipmmu_vmsa_domain* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iommu_domain *FUNC2(unsigned type)
{
	struct ipmmu_vmsa_domain *domain;

	domain = FUNC0(sizeof(*domain), GFP_KERNEL);
	if (!domain)
		return NULL;

	FUNC1(&domain->mutex);

	return &domain->io_domain;
}