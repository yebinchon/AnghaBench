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
struct nvkm_udevice {struct nvkm_device* device; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 struct nvkm_udevice* FUNC3 (struct nvkm_object*) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_object *object, bool suspend)
{
	struct nvkm_udevice *udev = FUNC3(object);
	struct nvkm_device *device = udev->device;
	int ret = 0;

	FUNC0(&device->mutex);
	if (!--device->refcount) {
		ret = FUNC2(device, suspend);
		if (ret && suspend) {
			device->refcount++;
			goto done;
		}
	}

done:
	FUNC1(&device->mutex);
	return ret;
}