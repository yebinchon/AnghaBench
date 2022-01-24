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
typedef  scalar_t__ u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_bios {struct nvkm_subdev subdev; } ;
struct nvbios_power_budget {int cap_entry; int ver; int hlen; int elen; int ecount; scalar_t__ offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct nvkm_bios*,int*,int*,int*,int*) ; 
 int FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*) ; 

int
FUNC3(struct nvkm_bios *bios,
                           struct nvbios_power_budget *budget)
{
	struct nvkm_subdev *subdev = &bios->subdev;
	u8 ver, hdr, cnt, len, cap_entry;
	u32 header;

	if (!bios || !budget)
		return -EINVAL;

	header = FUNC0(bios, &ver, &hdr, &cnt, &len);
	if (!header || !cnt)
		return -ENODEV;

	switch (ver) {
	case 0x20:
		cap_entry = FUNC1(bios, header + 0x9);
		break;
	case 0x30:
		cap_entry = FUNC1(bios, header + 0xa);
		break;
	default:
		cap_entry = 0xff;
	}

	if (cap_entry >= cnt && cap_entry != 0xff) {
		FUNC2(subdev,
		          "invalid cap_entry in power budget table found\n");
		budget->cap_entry = 0xff;
		return -EINVAL;
	}

	budget->offset = header;
	budget->ver = ver;
	budget->hlen = hdr;
	budget->elen = len;
	budget->ecount = cnt;

	budget->cap_entry = cap_entry;

	return 0;
}