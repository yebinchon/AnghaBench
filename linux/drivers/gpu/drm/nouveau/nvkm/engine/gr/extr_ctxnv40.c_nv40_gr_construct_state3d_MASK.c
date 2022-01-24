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
struct nvkm_grctx {struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_grctx*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_grctx *ctx)
{
	struct nvkm_device *device = ctx->device;
	int i;

	if (device->chipset == 0x40) {
		FUNC0(ctx, 0x401880, 51);
		FUNC1(ctx, 0x401940, 0x00000100);
	} else
	if (device->chipset == 0x46 || device->chipset == 0x47 ||
	    device->chipset == 0x49 || device->chipset == 0x4b) {
		FUNC0(ctx, 0x401880, 32);
		for (i = 0; i < 16; i++)
			FUNC1(ctx, 0x401880 + (i * 4), 0x00000111);
		if (device->chipset == 0x46)
			FUNC0(ctx, 0x401900, 16);
		FUNC0(ctx, 0x401940, 3);
	}
	FUNC0(ctx, 0x40194c, 18);
	FUNC1(ctx, 0x401954, 0x00000111);
	FUNC1(ctx, 0x401958, 0x00080060);
	FUNC1(ctx, 0x401974, 0x00000080);
	FUNC1(ctx, 0x401978, 0xffff0000);
	FUNC1(ctx, 0x40197c, 0x00000001);
	FUNC1(ctx, 0x401990, 0x46400000);
	if (device->chipset == 0x40) {
		FUNC0(ctx, 0x4019a0, 2);
		FUNC0(ctx, 0x4019ac, 5);
	} else {
		FUNC0(ctx, 0x4019a0, 1);
		FUNC0(ctx, 0x4019b4, 3);
	}
	FUNC1(ctx, 0x4019bc, 0xffff0000);
	switch (device->chipset) {
	case 0x46:
	case 0x47:
	case 0x49:
	case 0x4b:
		FUNC0(ctx, 0x4019c0, 18);
		for (i = 0; i < 16; i++)
			FUNC1(ctx, 0x4019c0 + (i * 4), 0x88888888);
		break;
	}
	FUNC0(ctx, 0x401a08, 8);
	FUNC1(ctx, 0x401a10, 0x0fff0000);
	FUNC1(ctx, 0x401a14, 0x0fff0000);
	FUNC1(ctx, 0x401a1c, 0x00011100);
	FUNC0(ctx, 0x401a2c, 4);
	FUNC0(ctx, 0x401a44, 26);
	for (i = 0; i < 16; i++)
		FUNC1(ctx, 0x401a44 + (i * 4), 0x07ff0000);
	FUNC1(ctx, 0x401a8c, 0x4b7fffff);
	if (device->chipset == 0x40) {
		FUNC0(ctx, 0x401ab8, 3);
	} else {
		FUNC0(ctx, 0x401ab8, 1);
		FUNC0(ctx, 0x401ac0, 1);
	}
	FUNC0(ctx, 0x401ad0, 8);
	FUNC1(ctx, 0x401ad0, 0x30201000);
	FUNC1(ctx, 0x401ad4, 0x70605040);
	FUNC1(ctx, 0x401ad8, 0xb8a89888);
	FUNC1(ctx, 0x401adc, 0xf8e8d8c8);
	FUNC0(ctx, 0x401b10, device->chipset == 0x40 ? 2 : 1);
	FUNC1(ctx, 0x401b10, 0x40100000);
	FUNC0(ctx, 0x401b18, device->chipset == 0x40 ? 6 : 5);
	FUNC1(ctx, 0x401b28, device->chipset == 0x40 ?
			      0x00000004 : 0x00000000);
	FUNC0(ctx, 0x401b30, 25);
	FUNC1(ctx, 0x401b34, 0x0000ffff);
	FUNC1(ctx, 0x401b68, 0x435185d6);
	FUNC1(ctx, 0x401b6c, 0x2155b699);
	FUNC1(ctx, 0x401b70, 0xfedcba98);
	FUNC1(ctx, 0x401b74, 0x00000098);
	FUNC1(ctx, 0x401b84, 0xffffffff);
	FUNC1(ctx, 0x401b88, 0x00ff7000);
	FUNC1(ctx, 0x401b8c, 0x0000ffff);
	if (device->chipset != 0x44 && device->chipset != 0x4a &&
	    device->chipset != 0x4e)
		FUNC0(ctx, 0x401b94, 1);
	FUNC0(ctx, 0x401b98, 8);
	FUNC1(ctx, 0x401b9c, 0x00ff0000);
	FUNC0(ctx, 0x401bc0, 9);
	FUNC1(ctx, 0x401be0, 0x00ffff00);
	FUNC0(ctx, 0x401c00, 192);
	for (i = 0; i < 16; i++) { /* fragment texture units */
		FUNC1(ctx, 0x401c40 + (i * 4), 0x00018488);
		FUNC1(ctx, 0x401c80 + (i * 4), 0x00028202);
		FUNC1(ctx, 0x401d00 + (i * 4), 0x0000aae4);
		FUNC1(ctx, 0x401d40 + (i * 4), 0x01012000);
		FUNC1(ctx, 0x401d80 + (i * 4), 0x00080008);
		FUNC1(ctx, 0x401e00 + (i * 4), 0x00100008);
	}
	for (i = 0; i < 4; i++) { /* vertex texture units */
		FUNC1(ctx, 0x401e90 + (i * 4), 0x0001bc80);
		FUNC1(ctx, 0x401ea0 + (i * 4), 0x00000202);
		FUNC1(ctx, 0x401ec0 + (i * 4), 0x00000008);
		FUNC1(ctx, 0x401ee0 + (i * 4), 0x00080008);
	}
	FUNC0(ctx, 0x400f5c, 3);
	FUNC1(ctx, 0x400f5c, 0x00000002);
	FUNC0(ctx, 0x400f84, 1);
}