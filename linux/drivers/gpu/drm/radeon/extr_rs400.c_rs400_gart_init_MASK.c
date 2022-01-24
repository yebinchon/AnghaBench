#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int table_size; int num_gpu_pages; scalar_t__ ptr; } ;
struct TYPE_3__ {int gtt_size; } ;
struct radeon_device {TYPE_2__ gart; TYPE_1__ mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 
 scalar_t__ FUNC4 (struct radeon_device*) ; 

int FUNC5(struct radeon_device *rdev)
{
	int r;

	if (rdev->gart.ptr) {
		FUNC1(1, "RS400 GART already initialized\n");
		return 0;
	}
	/* Check gart size */
	switch(rdev->mc.gtt_size / (1024 * 1024)) {
	case 32:
	case 64:
	case 128:
	case 256:
	case 512:
	case 1024:
	case 2048:
		break;
	default:
		return -EINVAL;
	}
	/* Initialize common gart structure */
	r = FUNC2(rdev);
	if (r)
		return r;
	if (FUNC4(rdev))
		FUNC0("Failed to register debugfs file for RS400 GART !\n");
	rdev->gart.table_size = rdev->gart.num_gpu_pages * 4;
	return FUNC3(rdev);
}