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
typedef  scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvkm_bios*,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static u16
FUNC3(struct nvbios_init *init, u16 offset, const char *name)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u16 len, data = FUNC0(bios, &len);
	if (data) {
		if (len >= offset + 2) {
			data = FUNC1(bios, data + offset);
			if (data)
				return data;

			FUNC2("%s pointer invalid\n", name);
			return 0x0000;
		}

		FUNC2("init data too short for %s pointer", name);
		return 0x0000;
	}

	FUNC2("init data not found\n");
	return 0x0000;
}