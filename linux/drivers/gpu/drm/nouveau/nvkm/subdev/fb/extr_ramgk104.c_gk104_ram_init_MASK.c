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
typedef  int u8 ;
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_ram {TYPE_1__* fb; } ;
struct nvkm_device {struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nvkm_ram*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,int) ; 
 int FUNC2 (struct nvkm_bios*,int*,int*,int*,int*,int*,int*) ; 
 int FUNC3 (struct nvkm_bios*,int) ; 
 int FUNC4 (struct nvkm_bios*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int,int,int) ; 
 int FUNC6 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_device*,int,int) ; 

int
FUNC8(struct nvkm_ram *ram)
{
	struct nvkm_subdev *subdev = &ram->fb->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_bios *bios = device->bios;
	u8  ver, hdr, cnt, len, snr, ssz;
	u32 data, save;
	int i;

	/* run a bunch of tables from rammap table.  there's actually
	 * individual pointers for each rammap entry too, but, nvidia
	 * seem to just run the last two entries' scripts early on in
	 * their init, and never again.. we'll just run 'em all once
	 * for now.
	 *
	 * i strongly suspect that each script is for a separate mode
	 * (likely selected by 0x10f65c's lower bits?), and the
	 * binary driver skips the one that's already been setup by
	 * the init tables.
	 */
	data = FUNC2(bios, &ver, &hdr, &cnt, &len, &snr, &ssz);
	if (!data || hdr < 0x15)
		return -EINVAL;

	cnt  = FUNC3(bios, data + 0x14); /* guess at count */
	data = FUNC4(bios, data + 0x10); /* guess u32... */
	save = FUNC6(device, 0x10f65c) & 0x000000f0;
	for (i = 0; i < cnt; i++, data += 4) {
		if (i != save >> 4) {
			FUNC5(device, 0x10f65c, 0x000000f0, i << 4);
			FUNC1(subdev, FUNC4(bios, data));
		}
	}
	FUNC5(device, 0x10f65c, 0x000000f0, save);
	FUNC5(device, 0x10f584, 0x11000000, 0x00000000);
	FUNC7(device, 0x10ecc0, 0xffffffff);
	FUNC5(device, 0x10f160, 0x00000010, 0x00000010);

	return FUNC0(ram);
}