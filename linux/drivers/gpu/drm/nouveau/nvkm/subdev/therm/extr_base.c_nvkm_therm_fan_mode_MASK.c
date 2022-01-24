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
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_therm {int mode; TYPE_1__* func; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* temp_get ) (struct nvkm_therm*) ;} ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int EINVAL ; 
 int NVKM_THERM_CTRL_AUTO ; 
 int NVKM_THERM_CTRL_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,char const*) ; 
 scalar_t__ FUNC2 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_therm*,int) ; 
 scalar_t__ FUNC4 (struct nvkm_therm*) ; 

int
FUNC5(struct nvkm_therm *therm, int mode)
{
	struct nvkm_subdev *subdev = &therm->subdev;
	struct nvkm_device *device = subdev->device;
	static const char *name[] = {
		"disabled",
		"manual",
		"automatic"
	};

	/* The default PPWR ucode on fermi interferes with fan management */
	if ((mode >= FUNC0(name)) ||
	    (mode != NVKM_THERM_CTRL_NONE && FUNC2(device)))
		return -EINVAL;

	/* do not allow automatic fan management if the thermal sensor is
	 * not available */
	if (mode == NVKM_THERM_CTRL_AUTO &&
	    therm->func->temp_get(therm) < 0)
		return -EINVAL;

	if (therm->mode == mode)
		return 0;

	FUNC1(subdev, "fan management: %s\n", name[mode]);
	FUNC3(therm, mode);
	return 0;
}