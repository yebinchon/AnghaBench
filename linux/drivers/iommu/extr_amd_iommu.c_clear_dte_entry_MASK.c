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
typedef  size_t u16 ;
struct TYPE_2__ {int* data; } ;

/* Variables and functions */
 int DTE_FLAG_MASK ; 
 int DTE_FLAG_TV ; 
 int DTE_FLAG_V ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 TYPE_1__* amd_iommu_dev_table ; 

__attribute__((used)) static void FUNC1(u16 devid)
{
	/* remove entry from the device table seen by the hardware */
	amd_iommu_dev_table[devid].data[0]  = DTE_FLAG_V | DTE_FLAG_TV;
	amd_iommu_dev_table[devid].data[1] &= DTE_FLAG_MASK;

	FUNC0(devid);
}