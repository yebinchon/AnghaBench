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
typedef  int u16 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_bios {struct nvkm_subdev subdev; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_bios*,int*,int*) ; 
 int FUNC1 (struct nvkm_bios*,int) ; 
 int FUNC2 (struct nvkm_bios*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*,int) ; 

u8
FUNC4(struct nvkm_bios *bios, u8 port)
{
	struct nvkm_subdev *subdev = &bios->subdev;
	u8  ver, hdr;
	u16 mxm = FUNC0(bios, &ver, &hdr);
	if (mxm && hdr >= 8) {
		u16 map = FUNC2(bios, mxm + 6);
		if (map) {
			ver = FUNC1(bios, map);
			if (ver == 0x10) {
				if (port < FUNC1(bios, map + 3)) {
					map += FUNC1(bios, map + 1);
					map += port;
					return FUNC1(bios, map);
				}

				return 0x00;
			}

			FUNC3(subdev, "unknown ddc map v%02x\n", ver);
		}
	}

	/* v2.x: directly write port as dcb i2cidx */
	return (port << 4) | port;
}