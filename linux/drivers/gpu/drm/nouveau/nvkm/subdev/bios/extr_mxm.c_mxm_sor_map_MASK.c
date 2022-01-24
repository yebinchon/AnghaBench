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
typedef  int u16 ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int chip; } ;
struct nvkm_bios {TYPE_1__ version; struct nvkm_subdev subdev; } ;

/* Variables and functions */
 int* g84_sor_map ; 
 int* g92_sor_map ; 
 int* g94_sor_map ; 
 int* g98_sor_map ; 
 int FUNC0 (struct nvkm_bios*,int*,int*) ; 
 int FUNC1 (struct nvkm_bios*,int) ; 
 int FUNC2 (struct nvkm_bios*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*,...) ; 

u8
FUNC4(struct nvkm_bios *bios, u8 conn)
{
	struct nvkm_subdev *subdev = &bios->subdev;
	u8  ver, hdr;
	u16 mxm = FUNC0(bios, &ver, &hdr);
	if (mxm && hdr >= 6) {
		u16 map = FUNC2(bios, mxm + 4);
		if (map) {
			ver = FUNC1(bios, map);
			if (ver == 0x10 || ver == 0x11) {
				if (conn < FUNC1(bios, map + 3)) {
					map += FUNC1(bios, map + 1);
					map += conn;
					return FUNC1(bios, map);
				}

				return 0x00;
			}

			FUNC3(subdev, "unknown sor map v%02x\n", ver);
		}
	}

	if (bios->version.chip == 0x84 || bios->version.chip == 0x86)
		return g84_sor_map[conn];
	if (bios->version.chip == 0x92)
		return g92_sor_map[conn];
	if (bios->version.chip == 0x94 || bios->version.chip == 0x96)
		return g94_sor_map[conn];
	if (bios->version.chip == 0x98)
		return g98_sor_map[conn];

	FUNC3(subdev, "missing sor map\n");
	return 0x00;
}