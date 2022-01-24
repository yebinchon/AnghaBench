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
struct TYPE_6__ {int /*<<< orphan*/  bdev; } ;
struct virtio_gpu_device {TYPE_3__ mman; TYPE_2__* ddev; } ;
struct TYPE_5__ {TYPE_1__* anon_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  TTM_PL_TT ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtio_gpu_bo_driver ; 

int FUNC4(struct virtio_gpu_device *vgdev)
{
	int r;

	/* No others user of address space so set it to 0 */
	r = FUNC1(&vgdev->mman.bdev,
			       &virtio_gpu_bo_driver,
			       vgdev->ddev->anon_inode->i_mapping,
			       false);
	if (r) {
		FUNC0("failed initializing buffer object driver(%d).\n", r);
		goto err_dev_init;
	}

	r = FUNC3(&vgdev->mman.bdev, TTM_PL_TT, 0);
	if (r) {
		FUNC0("Failed initializing GTT heap.\n");
		goto err_mm_init;
	}
	return 0;

err_mm_init:
	FUNC2(&vgdev->mman.bdev);
err_dev_init:
	return r;
}