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
struct seq_file {int dummy; } ;
struct omap_iommu {int nr_tlb_entries; } ;
struct cr_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct omap_iommu*,struct cr_regs*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_iommu*,struct cr_regs*,struct seq_file*) ; 
 struct cr_regs* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cr_regs*) ; 

__attribute__((used)) static size_t FUNC4(struct omap_iommu *obj, struct seq_file *s)
{
	int i, num;
	struct cr_regs *cr;

	num = obj->nr_tlb_entries;

	cr = FUNC2(num, sizeof(*cr), GFP_KERNEL);
	if (!cr)
		return 0;

	num = FUNC0(obj, cr, num);
	for (i = 0; i < num; i++)
		FUNC1(obj, cr + i, s);
	FUNC3(cr);

	return 0;
}