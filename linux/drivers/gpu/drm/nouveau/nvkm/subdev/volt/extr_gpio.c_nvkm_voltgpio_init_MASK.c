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
struct nvkm_volt {int vid_mask; struct nvkm_subdev subdev; } ;
struct nvkm_gpio {int dummy; } ;
struct dcb_gpio_func {int dummy; } ;
struct TYPE_2__ {struct nvkm_gpio* gpio; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,int) ; 
 int FUNC2 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dcb_gpio_func*) ; 
 int /*<<< orphan*/ * tags ; 

int
FUNC3(struct nvkm_volt *volt)
{
	struct nvkm_subdev *subdev = &volt->subdev;
	struct nvkm_gpio *gpio = subdev->device->gpio;
	struct dcb_gpio_func func;
	int i;

	/* check we have gpio function info for each vid bit.  on some
	 * boards (ie. nvs295) the vid mask has more bits than there
	 * are valid gpio functions... from traces, nvidia appear to
	 * just touch the existing ones, so let's mask off the invalid
	 * bits and continue with life
	 */
	for (i = 0; i < FUNC0(tags); i++) {
		if (volt->vid_mask & (1 << i)) {
			int ret = FUNC2(gpio, 0, tags[i], 0xff, &func);
			if (ret) {
				if (ret != -ENOENT)
					return ret;
				FUNC1(subdev, "VID bit %d has no GPIO\n", i);
				volt->vid_mask &= ~(1 << i);
			}
		}
	}

	return 0;
}