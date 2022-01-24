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
struct root_entry {int dummy; } ;
struct intel_iommu {int /*<<< orphan*/  lock; struct root_entry* root_entry; int /*<<< orphan*/  name; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ROOT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,struct root_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct intel_iommu *iommu)
{
	struct root_entry *root;
	unsigned long flags;

	root = (struct root_entry *)FUNC1(iommu->node);
	if (!root) {
		FUNC2("Allocating root entry for %s failed\n",
			iommu->name);
		return -ENOMEM;
	}

	FUNC0(iommu, root, ROOT_SIZE);

	FUNC3(&iommu->lock, flags);
	iommu->root_entry = root;
	FUNC4(&iommu->lock, flags);

	return 0;
}