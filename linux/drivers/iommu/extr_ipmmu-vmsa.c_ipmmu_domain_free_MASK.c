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
struct ipmmu_vmsa_domain {int /*<<< orphan*/  iop; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipmmu_vmsa_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipmmu_vmsa_domain*) ; 
 struct ipmmu_vmsa_domain* FUNC4 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC5(struct iommu_domain *io_domain)
{
	struct ipmmu_vmsa_domain *domain = FUNC4(io_domain);

	/*
	 * Free the domain resources. We assume that all devices have already
	 * been detached.
	 */
	FUNC1(io_domain);
	FUNC2(domain);
	FUNC0(domain->iop);
	FUNC3(domain);
}