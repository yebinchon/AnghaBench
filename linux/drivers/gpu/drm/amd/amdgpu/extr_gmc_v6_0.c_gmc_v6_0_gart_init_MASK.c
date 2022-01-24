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
struct TYPE_2__ {int table_size; int num_gpu_pages; scalar_t__ gart_pte_flags; scalar_t__ bo; } ;
struct amdgpu_device {TYPE_1__ gart; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev)
{
	int r;

	if (adev->gart.bo) {
		FUNC2(adev->dev, "gmc_v6_0 PCIE GART already initialized\n");
		return 0;
	}
	r = FUNC0(adev);
	if (r)
		return r;
	adev->gart.table_size = adev->gart.num_gpu_pages * 8;
	adev->gart.gart_pte_flags = 0;
	return FUNC1(adev);
}