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
struct nvkm_subdev {int dummy; } ;
struct nvkm_device {TYPE_1__* func; int /*<<< orphan*/  head; scalar_t__ pri; int /*<<< orphan*/  event; scalar_t__ disable_mask; } ;
struct TYPE_2__ {struct nvkm_device* (* dtor ) (struct nvkm_device*) ;} ;

/* Variables and functions */
 int NVKM_SUBDEV_NR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nv_devices_mutex ; 
 struct nvkm_subdev* FUNC5 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_subdev**) ; 
 struct nvkm_device* FUNC8 (struct nvkm_device*) ; 

void
FUNC9(struct nvkm_device **pdevice)
{
	struct nvkm_device *device = *pdevice;
	int i;
	if (device) {
		FUNC3(&nv_devices_mutex);
		device->disable_mask = 0;
		for (i = NVKM_SUBDEV_NR - 1; i >= 0; i--) {
			struct nvkm_subdev *subdev =
				FUNC5(device, i);
			FUNC7(&subdev);
		}

		FUNC6(&device->event);

		if (device->pri)
			FUNC0(device->pri);
		FUNC2(&device->head);

		if (device->func->dtor)
			*pdevice = device->func->dtor(device);
		FUNC4(&nv_devices_mutex);

		FUNC1(*pdevice);
		*pdevice = NULL;
	}
}