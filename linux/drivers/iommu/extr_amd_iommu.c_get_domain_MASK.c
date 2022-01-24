#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct protection_domain {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int defer_attach; struct protection_domain* domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct protection_domain* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct protection_domain*) ; 
 TYPE_1__* FUNC4 (struct device*) ; 
 struct iommu_domain* FUNC5 (struct device*) ; 
 struct protection_domain* FUNC6 (struct iommu_domain*) ; 

__attribute__((used)) static struct protection_domain *FUNC7(struct device *dev)
{
	struct protection_domain *domain;
	struct iommu_domain *io_domain;

	if (!FUNC2(dev))
		return FUNC0(-EINVAL);

	domain = FUNC4(dev)->domain;
	if (domain == NULL && FUNC4(dev)->defer_attach) {
		FUNC4(dev)->defer_attach = false;
		io_domain = FUNC5(dev);
		domain = FUNC6(io_domain);
		FUNC1(dev, domain);
	}
	if (domain == NULL)
		return FUNC0(-EBUSY);

	if (!FUNC3(domain))
		return FUNC0(-EBUSY);

	return domain;
}