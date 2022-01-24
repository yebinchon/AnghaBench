#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int table_size; int num_gpu_pages; scalar_t__ robj; } ;
struct radeon_device {TYPE_2__* asic; TYPE_3__ gart; } ;
struct TYPE_4__ {int /*<<< orphan*/ * set_page; int /*<<< orphan*/ * get_page_entry; int /*<<< orphan*/ * tlb_flush; } ;
struct TYPE_5__ {TYPE_1__ gart; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  rv370_pcie_gart_get_page_entry ; 
 int /*<<< orphan*/  rv370_pcie_gart_set_page ; 
 int /*<<< orphan*/  rv370_pcie_gart_tlb_flush ; 

int FUNC5(struct radeon_device *rdev)
{
	int r;

	if (rdev->gart.robj) {
		FUNC1(1, "RV370 PCIE GART already initialized\n");
		return 0;
	}
	/* Initialize common gart structure */
	r = FUNC2(rdev);
	if (r)
		return r;
	r = FUNC4(rdev);
	if (r)
		FUNC0("Failed to register debugfs file for PCIE gart !\n");
	rdev->gart.table_size = rdev->gart.num_gpu_pages * 4;
	rdev->asic->gart.tlb_flush = &rv370_pcie_gart_tlb_flush;
	rdev->asic->gart.get_page_entry = &rv370_pcie_gart_get_page_entry;
	rdev->asic->gart.set_page = &rv370_pcie_gart_set_page;
	return FUNC3(rdev);
}