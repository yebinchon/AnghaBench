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
struct pwr_rail_t {int mode; int extdev_id; int resistor_count; int /*<<< orphan*/  config; TYPE_1__* resistors; } ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_bios {struct nvkm_subdev subdev; } ;
struct nvbios_iccsense {int nr_entry; struct pwr_rail_t* rail; } ;
struct nvbios_extdev_func {int type; } ;
struct TYPE_2__ {int mohm; int enabled; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  NVBIOS_EXTDEV_INA209 130 
#define  NVBIOS_EXTDEV_INA219 129 
#define  NVBIOS_EXTDEV_INA3221 128 
 struct pwr_rail_t* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,int,struct nvbios_extdev_func*) ; 
 int FUNC2 (struct nvkm_bios*,int*,int*,int*,int*) ; 
 int FUNC3 (struct nvkm_bios*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_bios*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_subdev*,char*,int) ; 

int
FUNC6(struct nvkm_bios *bios, struct nvbios_iccsense *iccsense)
{
	struct nvkm_subdev *subdev = &bios->subdev;
	u8 ver, hdr, cnt, len, i;
	u32 table, entry;

	table = FUNC2(bios, &ver, &hdr, &cnt, &len);
	if (!table || !cnt)
		return -EINVAL;

	if (ver != 0x10 && ver != 0x20) {
		FUNC5(subdev, "ICCSENSE version 0x%02x unknown\n", ver);
		return -EINVAL;
	}

	iccsense->nr_entry = cnt;
	iccsense->rail = FUNC0(cnt, sizeof(struct pwr_rail_t),
				       GFP_KERNEL);
	if (!iccsense->rail)
		return -ENOMEM;

	for (i = 0; i < cnt; ++i) {
		struct nvbios_extdev_func extdev;
		struct pwr_rail_t *rail = &iccsense->rail[i];
		u8 res_start = 0;
		int r;

		entry = table + hdr + i * len;

		switch(ver) {
		case 0x10:
			if ((FUNC3(bios, entry + 0x1) & 0xf8) == 0xf8)
				rail->mode = 1;
			else
				rail->mode = 0;
			rail->extdev_id = FUNC3(bios, entry + 0x2);
			res_start = 0x3;
			break;
		case 0x20:
			rail->mode = FUNC3(bios, entry);
			rail->extdev_id = FUNC3(bios, entry + 0x1);
			res_start = 0x5;
			break;
		}

		if (FUNC1(bios, rail->extdev_id, &extdev))
			continue;

		switch (extdev.type) {
		case NVBIOS_EXTDEV_INA209:
		case NVBIOS_EXTDEV_INA219:
			rail->resistor_count = 1;
			break;
		case NVBIOS_EXTDEV_INA3221:
			rail->resistor_count = 3;
			break;
		default:
			rail->resistor_count = 0;
			break;
		}

		for (r = 0; r < rail->resistor_count; ++r) {
			rail->resistors[r].mohm = FUNC3(bios, entry + res_start + r * 2);
			rail->resistors[r].enabled = !(FUNC3(bios, entry + res_start + r * 2 + 1) & 0x40);
		}
		rail->config = FUNC4(bios, entry + res_start + rail->resistor_count * 2);
	}

	return 0;
}