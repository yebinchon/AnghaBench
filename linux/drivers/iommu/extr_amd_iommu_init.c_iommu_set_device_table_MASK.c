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
typedef  int u64 ;
struct amd_iommu {int /*<<< orphan*/ * mmio_base; } ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MMIO_DEV_TABLE_OFFSET ; 
 int /*<<< orphan*/  amd_iommu_dev_table ; 
 int dev_table_size ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static void FUNC3(struct amd_iommu *iommu)
{
	u64 entry;

	FUNC0(iommu->mmio_base == NULL);

	entry = FUNC1(amd_iommu_dev_table);
	entry |= (dev_table_size >> 12) - 1;
	FUNC2(iommu->mmio_base + MMIO_DEV_TABLE_OFFSET,
			&entry, sizeof(entry));
}