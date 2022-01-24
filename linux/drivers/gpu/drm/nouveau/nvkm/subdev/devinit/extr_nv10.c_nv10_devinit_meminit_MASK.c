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
typedef  int uint32_t ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {struct nvkm_subdev subdev; } ;
struct nvkm_device {scalar_t__ card_type; int chipset; } ;
struct io_mapping {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PFB_CFG0 ; 
 int /*<<< orphan*/  NV10_PFB_REFCTRL ; 
 int /*<<< orphan*/  NV10_PFB_REFCTRL_VALID_1 ; 
 scalar_t__ NV_11 ; 
 int /*<<< orphan*/  FUNC0 (struct io_mapping*) ; 
 struct io_mapping* FUNC1 (struct nvkm_device*) ; 
 int FUNC2 (struct io_mapping*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct io_mapping*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int /*<<< orphan*/ ,int,int const) ; 
 int FUNC6 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct nvkm_devinit *init)
{
	struct nvkm_subdev *subdev = &init->subdev;
	struct nvkm_device *device = subdev->device;
	static const int mem_width[] = { 0x10, 0x00, 0x20 };
	int mem_width_count;
	uint32_t patt = 0xdeadbeef;
	struct io_mapping *fb;
	int i, j, k;

	if (device->card_type >= NV_11 && device->chipset >= 0x17)
		mem_width_count = 3;
	else
		mem_width_count = 2;

	/* Map the framebuffer aperture */
	fb = FUNC1(device);
	if (!fb) {
		FUNC4(subdev, "failed to map fb\n");
		return;
	}

	FUNC7(device, NV10_PFB_REFCTRL, NV10_PFB_REFCTRL_VALID_1);

	/* Probe memory bus width */
	for (i = 0; i < mem_width_count; i++) {
		FUNC5(device, NV04_PFB_CFG0, 0x30, mem_width[i]);

		for (j = 0; j < 4; j++) {
			for (k = 0; k < 4; k++)
				FUNC3(fb, 0x1c, 0);

			FUNC3(fb, 0x1c, patt);
			FUNC3(fb, 0x3c, 0);

			if (FUNC2(fb, 0x1c) == patt)
				goto mem_width_found;
		}
	}

mem_width_found:
	patt <<= 1;

	/* Probe amount of installed memory */
	for (i = 0; i < 4; i++) {
		int off = FUNC6(device, 0x10020c) - 0x100000;

		FUNC3(fb, off, patt);
		FUNC3(fb, 0, 0);

		FUNC2(fb, 0);
		FUNC2(fb, 0);
		FUNC2(fb, 0);
		FUNC2(fb, 0);

		if (FUNC2(fb, off) == patt)
			goto amount_found;
	}

	/* IC missing - disable the upper half memory space. */
	FUNC5(device, NV04_PFB_CFG0, 0x1000, 0);

amount_found:
	FUNC0(fb);
}