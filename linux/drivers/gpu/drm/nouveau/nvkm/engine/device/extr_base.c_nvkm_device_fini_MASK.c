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
struct nvkm_device {TYPE_1__* func; int /*<<< orphan*/  therm; } ;
typedef  int s64 ;
struct TYPE_2__ {int /*<<< orphan*/  (* fini ) (struct nvkm_device*,int) ;} ;

/* Variables and functions */
 int NVKM_SUBDEV_NR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*) ; 
 struct nvkm_subdev* FUNC4 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_subdev*,char*,int) ; 
 int FUNC6 (struct nvkm_subdev*,int) ; 
 int FUNC7 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_device*,int) ; 

int
FUNC10(struct nvkm_device *device, bool suspend)
{
	const char *action = suspend ? "suspend" : "fini";
	struct nvkm_subdev *subdev;
	int ret, i;
	s64 time;

	FUNC2(device, "%s running...\n", action);
	time = FUNC1(FUNC0());

	FUNC3(device);

	for (i = NVKM_SUBDEV_NR - 1; i >= 0; i--) {
		if ((subdev = FUNC4(device, i))) {
			ret = FUNC6(subdev, suspend);
			if (ret && suspend)
				goto fail;
		}
	}

	FUNC8(device->therm, suspend);

	if (device->func->fini)
		device->func->fini(device, suspend);

	time = FUNC1(FUNC0()) - time;
	FUNC2(device, "%s completed in %lldus...\n", action, time);
	return 0;

fail:
	do {
		if ((subdev = FUNC4(device, i))) {
			int rret = FUNC7(subdev);
			if (rret)
				FUNC5(subdev, "failed restart, %d\n", ret);
		}
	} while (++i < NVKM_SUBDEV_NR);

	FUNC2(device, "%s failed with %d\n", action, ret);
	return ret;
}