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
struct TYPE_2__ {int table_size; int num_gpu_pages; int gart_pte_flags; scalar_t__ bo; } ;
struct amdgpu_device {TYPE_1__ gart; } ;

/* Variables and functions */
 int AMDGPU_PTE_EXECUTABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTYPE_UC ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	int r;

	if (adev->gart.bo) {
		FUNC1(1, "VEGA10 PCIE GART already initialized\n");
		return 0;
	}
	/* Initialize common gart structure */
	r = FUNC2(adev);
	if (r)
		return r;
	adev->gart.table_size = adev->gart.num_gpu_pages * 8;
	adev->gart.gart_pte_flags = FUNC0(MTYPE_UC) |
				 AMDGPU_PTE_EXECUTABLE;
	return FUNC3(adev);
}