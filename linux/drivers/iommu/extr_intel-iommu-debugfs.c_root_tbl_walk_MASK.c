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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct seq_file {int dummy; } ;
struct intel_iommu {int /*<<< orphan*/  lock; int /*<<< orphan*/  root_entry; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct intel_iommu*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct seq_file *m, struct intel_iommu *iommu)
{
	unsigned long flags;
	u16 bus;

	FUNC3(&iommu->lock, flags);
	FUNC1(m, "IOMMU %s: Root Table Address: 0x%llx\n", iommu->name,
		   (u64)FUNC5(iommu->root_entry));
	FUNC2(m, "B.D.F\tRoot_entry\t\t\t\tContext_entry\t\t\t\tPASID\tPASID_table_entry\n");

	/*
	 * No need to check if the root entry is present or not because
	 * iommu_context_addr() performs the same check before returning
	 * context entry.
	 */
	for (bus = 0; bus < 256; bus++)
		FUNC0(m, iommu, bus);

	FUNC4(&iommu->lock, flags);
}