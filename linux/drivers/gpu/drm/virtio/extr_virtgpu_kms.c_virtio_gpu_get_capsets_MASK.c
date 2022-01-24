#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct virtio_gpu_drv_capset {int dummy; } ;
struct virtio_gpu_device {int num_capsets; TYPE_1__* capsets; int /*<<< orphan*/  resp_wq; } ;
struct TYPE_3__ {scalar_t__ id; int /*<<< orphan*/  max_size; int /*<<< orphan*/  max_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 TYPE_1__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_gpu_device*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC6(struct virtio_gpu_device *vgdev,
				   int num_capsets)
{
	int i, ret;

	vgdev->capsets = FUNC2(num_capsets,
				 sizeof(struct virtio_gpu_drv_capset),
				 GFP_KERNEL);
	if (!vgdev->capsets) {
		FUNC0("failed to allocate cap sets\n");
		return;
	}
	for (i = 0; i < num_capsets; i++) {
		FUNC4(vgdev, i);
		ret = FUNC5(vgdev->resp_wq,
					 vgdev->capsets[i].id > 0, 5 * HZ);
		if (ret == 0) {
			FUNC0("timed out waiting for cap set %d\n", i);
			FUNC3(vgdev->capsets);
			vgdev->capsets = NULL;
			return;
		}
		FUNC1("cap set %d: id %d, max-version %d, max-size %d\n",
			 i, vgdev->capsets[i].id,
			 vgdev->capsets[i].max_version,
			 vgdev->capsets[i].max_size);
	}
	vgdev->num_capsets = num_capsets;
}