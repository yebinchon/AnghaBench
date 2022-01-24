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
struct s390_domain {struct iommu_domain domain; int /*<<< orphan*/  devices; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  dma_table_lock; int /*<<< orphan*/  dma_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int IOMMU_DOMAIN_UNMANAGED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct s390_domain*) ; 
 struct s390_domain* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iommu_domain *FUNC5(unsigned domain_type)
{
	struct s390_domain *s390_domain;

	if (domain_type != IOMMU_DOMAIN_UNMANAGED)
		return NULL;

	s390_domain = FUNC3(sizeof(*s390_domain), GFP_KERNEL);
	if (!s390_domain)
		return NULL;

	s390_domain->dma_table = FUNC1();
	if (!s390_domain->dma_table) {
		FUNC2(s390_domain);
		return NULL;
	}

	FUNC4(&s390_domain->dma_table_lock);
	FUNC4(&s390_domain->list_lock);
	FUNC0(&s390_domain->devices);

	return &s390_domain->domain;
}