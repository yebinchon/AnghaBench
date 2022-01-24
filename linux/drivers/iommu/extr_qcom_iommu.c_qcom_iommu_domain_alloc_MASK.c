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
struct qcom_iommu_domain {struct iommu_domain domain; int /*<<< orphan*/  pgtbl_lock; int /*<<< orphan*/  init_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int IOMMU_DOMAIN_DMA ; 
 unsigned int IOMMU_DOMAIN_UNMANAGED ; 
 scalar_t__ FUNC0 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_iommu_domain*) ; 
 struct qcom_iommu_domain* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iommu_domain *FUNC5(unsigned type)
{
	struct qcom_iommu_domain *qcom_domain;

	if (type != IOMMU_DOMAIN_UNMANAGED && type != IOMMU_DOMAIN_DMA)
		return NULL;
	/*
	 * Allocate the domain and initialise some of its data structures.
	 * We can't really do anything meaningful until we've added a
	 * master.
	 */
	qcom_domain = FUNC2(sizeof(*qcom_domain), GFP_KERNEL);
	if (!qcom_domain)
		return NULL;

	if (type == IOMMU_DOMAIN_DMA &&
	    FUNC0(&qcom_domain->domain)) {
		FUNC1(qcom_domain);
		return NULL;
	}

	FUNC3(&qcom_domain->init_mutex);
	FUNC4(&qcom_domain->pgtbl_lock);

	return &qcom_domain->domain;
}