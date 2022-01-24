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
struct omap_iommu {int /*<<< orphan*/  nr_tlb_entries; struct dentry* debug_dir; int /*<<< orphan*/  name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct omap_iommu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iommu_debug_root ; 
 int /*<<< orphan*/  pagetable_fops ; 
 int /*<<< orphan*/  regs_fops ; 
 int /*<<< orphan*/  tlb_fops ; 

void FUNC3(struct omap_iommu *obj)
{
	struct dentry *d;

	if (!iommu_debug_root)
		return;

	d = FUNC0(obj->name, iommu_debug_root);
	obj->debug_dir = d;

	FUNC2("nr_tlb_entries", 0400, d, &obj->nr_tlb_entries);
	FUNC1("regs", 0400, d, obj, &regs_fops);
	FUNC1("tlb", 0400, d, obj, &tlb_fops);
	FUNC1("pagetable", 0400, d, obj, &pagetable_fops);
}