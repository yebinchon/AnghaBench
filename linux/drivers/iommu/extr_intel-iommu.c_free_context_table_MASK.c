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
struct intel_iommu {int /*<<< orphan*/  lock; struct context_entry* root_entry; } ;
struct context_entry {int dummy; } ;

/* Variables and functions */
 int ROOT_ENTRY_NR ; 
 int /*<<< orphan*/  FUNC0 (struct context_entry*) ; 
 struct context_entry* FUNC1 (struct intel_iommu*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct intel_iommu *iommu)
{
	int i;
	unsigned long flags;
	struct context_entry *context;

	FUNC3(&iommu->lock, flags);
	if (!iommu->root_entry) {
		goto out;
	}
	for (i = 0; i < ROOT_ENTRY_NR; i++) {
		context = FUNC1(iommu, i, 0, 0);
		if (context)
			FUNC0(context);

		if (!FUNC2(iommu))
			continue;

		context = FUNC1(iommu, i, 0x80, 0);
		if (context)
			FUNC0(context);

	}
	FUNC0(iommu->root_entry);
	iommu->root_entry = NULL;
out:
	FUNC4(&iommu->lock, flags);
}