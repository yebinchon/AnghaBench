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
 int FUNC0 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int,int) ; 

bool
FUNC3(struct nvkm_device *device, bool lock)
{
	bool locked = !FUNC1(device, 0, 0x1f);
	u8 data = lock ? 0x99 : 0x57;
	if (device->card_type < NV_50)
		FUNC2(device, 0, 0x1f, data);
	else
		FUNC2(device, 0, 0x3f, data);
	if (device->chipset == 0x11) {
		if (!(FUNC0(device, 0x001084) & 0x10000000))
			FUNC2(device, 1, 0x1f, data);
	}
	return locked;
}