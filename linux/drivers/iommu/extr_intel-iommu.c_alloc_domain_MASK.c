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
struct dmar_domain {int flags; int has_iotlb_device; int /*<<< orphan*/  devices; int /*<<< orphan*/  nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 struct dmar_domain* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_domain*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct dmar_domain *FUNC3(int flags)
{
	struct dmar_domain *domain;

	domain = FUNC1();
	if (!domain)
		return NULL;

	FUNC2(domain, 0, sizeof(*domain));
	domain->nid = NUMA_NO_NODE;
	domain->flags = flags;
	domain->has_iotlb_device = false;
	FUNC0(&domain->devices);

	return domain;
}