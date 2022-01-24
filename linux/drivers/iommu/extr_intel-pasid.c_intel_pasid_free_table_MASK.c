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
struct pasid_table {int max_pasid; int /*<<< orphan*/  order; struct pasid_dir_entry* table; int /*<<< orphan*/  dev; } ;
struct pasid_entry {int dummy; } ;
struct pasid_dir_entry {int dummy; } ;
struct device_domain_info {struct pasid_table* pasid_table; } ;
struct TYPE_2__ {struct device_domain_info* iommu; } ;
struct device {TYPE_1__ archdata; } ;

/* Variables and functions */
 int PASID_PDE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_domain_info*,struct pasid_table*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pasid_entry*) ; 
 struct pasid_entry* FUNC4 (struct pasid_dir_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct pasid_table*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct device *dev)
{
	struct device_domain_info *info;
	struct pasid_table *pasid_table;
	struct pasid_dir_entry *dir;
	struct pasid_entry *table;
	int i, max_pde;

	info = dev->archdata.iommu;
	if (!info || !FUNC0(dev) || !info->pasid_table)
		return;

	pasid_table = info->pasid_table;
	FUNC1(info, pasid_table);

	if (!FUNC6(&pasid_table->dev))
		return;

	/* Free scalable mode PASID directory tables: */
	dir = pasid_table->table;
	max_pde = pasid_table->max_pasid >> PASID_PDE_SHIFT;
	for (i = 0; i < max_pde; i++) {
		table = FUNC4(&dir[i]);
		FUNC3(table);
	}

	FUNC2((unsigned long)pasid_table->table, pasid_table->order);
	FUNC5(pasid_table);
}