#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct nvkm_gpio {int dummy; } ;
struct TYPE_8__ {TYPE_3__* device; } ;
struct nvkm_bios {TYPE_4__ subdev; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct dcb_gpio_func {scalar_t__ func; } ;
struct TYPE_7__ {struct nvkm_gpio* gpio; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 scalar_t__ DCB_GPIO_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,struct dcb_gpio_func*) ; 
 scalar_t__ FUNC2 (struct nvbios_init*) ; 
 scalar_t__ FUNC3 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_gpio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	struct nvkm_gpio *gpio = bios->subdev.device->gpio;
	struct dcb_gpio_func func;
	u8 count = FUNC3(bios, init->offset + 1);
	u8 idx = 0, ver, len;
	u16 data, i;

	FUNC5("GPIO_NE\t");
	init->offset += 2;

	for (i = init->offset; i < init->offset + count; i++)
		FUNC0("0x%02x ", FUNC3(bios, i));
	FUNC0("\n");

	while ((data = FUNC1(bios, 0, idx++, &ver, &len, &func))) {
		if (func.func != DCB_GPIO_UNUSED) {
			for (i = init->offset; i < init->offset + count; i++) {
				if (func.func == FUNC3(bios, i))
					break;
			}

			FUNC5("\tFUNC[0x%02x]", func.func);
			if (i == (init->offset + count)) {
				FUNC0(" *");
				if (FUNC2(init))
					FUNC4(gpio, func.func);
			}
			FUNC0("\n");
		}
	}

	init->offset += count;
}