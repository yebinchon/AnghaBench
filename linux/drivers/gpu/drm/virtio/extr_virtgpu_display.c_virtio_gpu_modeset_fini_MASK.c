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
struct virtio_gpu_device {int num_scanouts; int /*<<< orphan*/  ddev; TYPE_1__* outputs; } ;
struct TYPE_2__ {int /*<<< orphan*/  edid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct virtio_gpu_device *vgdev)
{
	int i;

	for (i = 0 ; i < vgdev->num_scanouts; ++i)
		FUNC2(vgdev->outputs[i].edid);
	FUNC0(vgdev->ddev);
	FUNC1(vgdev->ddev);
}