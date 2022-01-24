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
struct nvkm_therm {TYPE_1__* fan; struct nvkm_subdev subdev; } ;
struct nvkm_gpio {int dummy; } ;
struct nvkm_device {struct nvkm_bios* bios; struct nvkm_gpio* gpio; } ;
struct nvkm_bios {int dummy; } ;
struct dcb_gpio_func {int line; int* log; int /*<<< orphan*/  func; } ;
struct TYPE_2__ {int /*<<< orphan*/  bios; int /*<<< orphan*/  perf; int /*<<< orphan*/  lock; int /*<<< orphan*/  alarm; struct nvkm_therm* parent; struct dcb_gpio_func tach; int /*<<< orphan*/  percent; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_GPIO_FAN ; 
 int /*<<< orphan*/  DCB_GPIO_FAN_SENSE ; 
 int DCB_GPIO_LOG_DIR_IN ; 
 int /*<<< orphan*/  DCB_GPIO_UNUSED ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_bios*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_bios*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct nvkm_bios*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  nvkm_fan_alarm ; 
 int FUNC6 (struct nvkm_therm*) ; 
 int FUNC7 (struct nvkm_therm*,struct dcb_gpio_func*) ; 
 int FUNC8 (struct nvkm_therm*,struct dcb_gpio_func*) ; 
 int FUNC9 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dcb_gpio_func*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC12 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(struct nvkm_therm *therm)
{
	struct nvkm_subdev *subdev = &therm->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_gpio *gpio = device->gpio;
	struct nvkm_bios *bios = device->bios;
	struct dcb_gpio_func func;
	int ret;

	/* attempt to locate a drivable fan, and determine control method */
	ret = FUNC9(gpio, 0, DCB_GPIO_FAN, 0xff, &func);
	if (ret == 0) {
		/* FIXME: is this really the place to perform such checks ? */
		if (func.line != 16 && func.log[0] & DCB_GPIO_LOG_DIR_IN) {
			FUNC4(subdev, "GPIO_FAN is in input mode\n");
			ret = -EINVAL;
		} else {
			ret = FUNC7(therm, &func);
			if (ret != 0)
				ret = FUNC8(therm, &func);
		}
	}

	/* no controllable fan found, create a dummy fan module */
	if (ret != 0) {
		ret = FUNC6(therm);
		if (ret)
			return ret;
	}

	FUNC4(subdev, "FAN control: %s\n", therm->fan->type);

	/* read the current speed, it is useful when resuming */
	therm->fan->percent = FUNC10(therm);

	/* attempt to detect a tachometer connection */
	ret = FUNC9(gpio, 0, DCB_GPIO_FAN_SENSE, 0xff,
			     &therm->fan->tach);
	if (ret)
		therm->fan->tach.func = DCB_GPIO_UNUSED;

	/* initialise fan bump/slow update handling */
	therm->fan->parent = therm;
	FUNC3(&therm->fan->alarm, nvkm_fan_alarm);
	FUNC13(&therm->fan->lock);

	/* other random init... */
	FUNC12(therm);
	FUNC1(bios, &therm->fan->perf);
	if (!FUNC0(bios, &therm->fan->bios)) {
		FUNC4(subdev, "parsing the fan table failed\n");
		if (FUNC2(bios, &therm->fan->bios))
			FUNC5(subdev, "parsing both fan tables failed\n");
	}
	FUNC11(therm);
	return 0;
}