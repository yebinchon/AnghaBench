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
typedef  int /*<<< orphan*/  u32 ;
struct intel_iommu {void** domain_ids; void** domains; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; int /*<<< orphan*/  cap; } ;
struct dmar_domain {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FLPT_DEFAULT_DID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**) ; 
 void* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC9 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct intel_iommu *iommu)
{
	u32 ndomains, nlongs;
	size_t size;

	ndomains = FUNC2(iommu->cap);
	FUNC6("%s: Number of Domains supported <%d>\n",
		 iommu->name, ndomains);
	nlongs = FUNC1(ndomains);

	FUNC10(&iommu->lock);

	iommu->domain_ids = FUNC3(nlongs, sizeof(unsigned long), GFP_KERNEL);
	if (!iommu->domain_ids) {
		FUNC7("%s: Allocating domain id array failed\n",
		       iommu->name);
		return -ENOMEM;
	}

	size = (FUNC0(ndomains, 256) >> 8) * sizeof(struct dmar_domain **);
	iommu->domains = FUNC5(size, GFP_KERNEL);

	if (iommu->domains) {
		size = 256 * sizeof(struct dmar_domain *);
		iommu->domains[0] = FUNC5(size, GFP_KERNEL);
	}

	if (!iommu->domains || !iommu->domains[0]) {
		FUNC7("%s: Allocating domain array failed\n",
		       iommu->name);
		FUNC4(iommu->domain_ids);
		FUNC4(iommu->domains);
		iommu->domain_ids = NULL;
		iommu->domains    = NULL;
		return -ENOMEM;
	}

	/*
	 * If Caching mode is set, then invalid translations are tagged
	 * with domain-id 0, hence we need to pre-allocate it. We also
	 * use domain-id 0 as a marker for non-allocated domain-id, so
	 * make sure it is not used for a real domain.
	 */
	FUNC8(0, iommu->domain_ids);

	/*
	 * Vt-d spec rev3.0 (section 6.2.3.1) requires that each pasid
	 * entry for first-level or pass-through translation modes should
	 * be programmed with a domain id different from those used for
	 * second-level or nested translation. We reserve a domain id for
	 * this purpose.
	 */
	if (FUNC9(iommu))
		FUNC8(FLPT_DEFAULT_DID, iommu->domain_ids);

	return 0;
}