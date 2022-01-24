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
typedef  size_t u8 ;
typedef  int u64 ;
struct root_entry {int lo; int hi; } ;
struct intel_iommu {int /*<<< orphan*/  node; struct root_entry* root_entry; } ;
struct context_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_SIZE ; 
 int VTD_PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,int*,int) ; 
 struct context_entry* FUNC1 (int /*<<< orphan*/ ) ; 
 struct context_entry* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct intel_iommu*) ; 
 unsigned long FUNC4 (void*) ; 

struct context_entry *FUNC5(struct intel_iommu *iommu, u8 bus,
					 u8 devfn, int alloc)
{
	struct root_entry *root = &iommu->root_entry[bus];
	struct context_entry *context;
	u64 *entry;

	entry = &root->lo;
	if (FUNC3(iommu)) {
		if (devfn >= 0x80) {
			devfn -= 0x80;
			entry = &root->hi;
		}
		devfn *= 2;
	}
	if (*entry & 1)
		context = FUNC2(*entry & VTD_PAGE_MASK);
	else {
		unsigned long phy_addr;
		if (!alloc)
			return NULL;

		context = FUNC1(iommu->node);
		if (!context)
			return NULL;

		FUNC0(iommu, (void *)context, CONTEXT_SIZE);
		phy_addr = FUNC4((void *)context);
		*entry = phy_addr | 1;
		FUNC0(iommu, entry, sizeof(*entry));
	}
	return &context[devfn];
}