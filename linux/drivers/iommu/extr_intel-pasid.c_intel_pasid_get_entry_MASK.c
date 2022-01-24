#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct pasid_table {struct pasid_dir_entry* table; } ;
struct pasid_entry {int dummy; } ;
struct pasid_dir_entry {int /*<<< orphan*/  val; } ;
struct device_domain_info {TYPE_2__* iommu; } ;
struct TYPE_3__ {struct device_domain_info* iommu; } ;
struct device {TYPE_1__ archdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int PASID_PDE_SHIFT ; 
 int PASID_PTE_MASK ; 
 int PASID_PTE_PRESENT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct pasid_entry* FUNC2 (int /*<<< orphan*/ ) ; 
 struct pasid_entry* FUNC3 (struct pasid_dir_entry*) ; 
 int FUNC4 (struct device*) ; 
 struct pasid_table* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  pasid_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct pasid_entry*) ; 

struct pasid_entry *FUNC9(struct device *dev, int pasid)
{
	struct device_domain_info *info;
	struct pasid_table *pasid_table;
	struct pasid_dir_entry *dir;
	struct pasid_entry *entries;
	int dir_index, index;

	pasid_table = FUNC5(dev);
	if (FUNC0(!pasid_table || pasid < 0 ||
		    pasid >= FUNC4(dev)))
		return NULL;

	dir = pasid_table->table;
	info = dev->archdata.iommu;
	dir_index = pasid >> PASID_PDE_SHIFT;
	index = pasid & PASID_PTE_MASK;

	FUNC6(&pasid_lock);
	entries = FUNC3(&dir[dir_index]);
	if (!entries) {
		entries = FUNC2(info->iommu->node);
		if (!entries) {
			FUNC7(&pasid_lock);
			return NULL;
		}

		FUNC1(dir[dir_index].val,
			   (u64)FUNC8(entries) | PASID_PTE_PRESENT);
	}
	FUNC7(&pasid_lock);

	return &entries[index];
}