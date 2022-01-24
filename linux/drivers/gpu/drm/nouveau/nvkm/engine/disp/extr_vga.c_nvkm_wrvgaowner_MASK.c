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
typedef  int u8 ;
struct nvkm_device {scalar_t__ card_type; int chipset; } ;

/* Variables and functions */
 scalar_t__ NV_50 ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int /*<<< orphan*/ ,int,int) ; 

void
FUNC2(struct nvkm_device *device, u8 select)
{
	if (device->card_type < NV_50) {
		u8 owner = (select == 1) ? 3 : select;
		if (device->chipset == 0x11) {
			/* workaround hw lockup bug */
			FUNC0(device, 0, 0x1f);
			FUNC0(device, 1, 0x1f);
		}

		FUNC1(device, 0, 0x44, owner);

		if (device->chipset == 0x11) {
			FUNC1(device, 0, 0x2e, owner);
			FUNC1(device, 0, 0x2e, owner);
		}
	}
}