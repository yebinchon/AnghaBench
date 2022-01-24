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
struct iommu_iotlb_gather {int dummy; } ;
struct io_pgtable_ops {int dummy; } ;
struct arm_v7s_io_pgtable {int /*<<< orphan*/  pgd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct arm_v7s_io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t,int,int /*<<< orphan*/ ) ; 
 struct arm_v7s_io_pgtable* FUNC2 (struct io_pgtable_ops*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static size_t FUNC4(struct io_pgtable_ops *ops, unsigned long iova,
			    size_t size, struct iommu_iotlb_gather *gather)
{
	struct arm_v7s_io_pgtable *data = FUNC2(ops);

	if (FUNC0(FUNC3(iova)))
		return 0;

	return FUNC1(data, gather, iova, size, 1, data->pgd);
}