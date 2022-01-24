#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_volt {int vid_mask; TYPE_2__ subdev; } ;
struct nvkm_gpio {int dummy; } ;
struct TYPE_3__ {struct nvkm_gpio* gpio; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * tags ; 

int
FUNC2(struct nvkm_volt *volt, u8 vid)
{
	struct nvkm_gpio *gpio = volt->subdev.device->gpio;
	int i;

	for (i = 0; i < FUNC0(tags); i++, vid >>= 1) {
		if (volt->vid_mask & (1 << i)) {
			int ret = FUNC1(gpio, 0, tags[i], 0xff, vid & 1);
			if (ret < 0)
				return ret;
		}
	}

	return 0;
}