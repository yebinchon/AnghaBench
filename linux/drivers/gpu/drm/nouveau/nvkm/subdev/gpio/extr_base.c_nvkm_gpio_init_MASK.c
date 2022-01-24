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
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_gpio {int /*<<< orphan*/  subdev; } ;
struct dcb_gpio_func {int /*<<< orphan*/  line; int /*<<< orphan*/  func; } ;
struct TYPE_2__ {int /*<<< orphan*/  cfgopt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DCB_GPIO_UNUSED ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_reset_ids ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct nvkm_gpio* FUNC4 (struct nvkm_subdev*) ; 
 int FUNC5 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dcb_gpio_func*) ; 
 int FUNC6 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_gpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * power_checks ; 

__attribute__((used)) static int
FUNC8(struct nvkm_subdev *subdev)
{
	struct nvkm_gpio *gpio = FUNC4(subdev);
	struct dcb_gpio_func func;
	int ret;
	int i;

	if (FUNC1(gpio_reset_ids))
		FUNC7(gpio, DCB_GPIO_UNUSED);

	if (FUNC2(subdev->device->cfgopt, "NvPowerChecks", true)) {
		for (i = 0; i < FUNC0(power_checks); ++i) {
			ret = FUNC5(gpio, 0, power_checks[i],
					     DCB_GPIO_UNUSED, &func);
			if (ret)
				continue;

			ret = FUNC6(gpio, 0, func.func, func.line);
			if (!ret)
				continue;

			FUNC3(&gpio->subdev,
				   "GPU is missing power, check its power "
				   "cables.  Boot with "
				   "nouveau.config=NvPowerChecks=0 to "
				   "disable.\n");
			return -EINVAL;
		}
	}

	return 0;
}