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
struct seq_file {struct omap_iommu* private; } ;
struct omap_iommu {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  iommu_debug_lock ; 
 scalar_t__ FUNC0 (struct omap_iommu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_iommu*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *data)
{
	struct omap_iommu *obj = s->private;

	if (FUNC0(obj))
		return -EPERM;

	FUNC1(&iommu_debug_lock);

	FUNC4(s, "%8s %8s\n", "cam:", "ram:");
	FUNC5(s, "-----------------------------------------\n");
	FUNC3(obj, s);

	FUNC2(&iommu_debug_lock);

	return 0;
}