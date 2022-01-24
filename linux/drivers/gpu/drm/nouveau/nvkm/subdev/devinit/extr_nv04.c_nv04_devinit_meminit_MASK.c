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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;
struct io_mapping {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PFB_BOOT_0 ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT_16MB ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT_4MB ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT_8MB ; 
 int NV04_PFB_BOOT_0_RAM_TYPE ; 
 int NV04_PFB_BOOT_0_RAM_TYPE_SDRAM_16MBIT ; 
 int NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_16MBIT ; 
 int NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_8MBIT ; 
 int NV04_PFB_BOOT_0_RAM_WIDTH_128 ; 
 int /*<<< orphan*/  NV04_PFB_DEBUG_0 ; 
 int NV04_PFB_DEBUG_0_REFRESH_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct io_mapping*) ; 
 struct io_mapping* FUNC1 (struct nvkm_device*) ; 
 int FUNC2 (struct io_mapping*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct io_mapping*,int,int) ; 
 scalar_t__ FUNC4 (struct io_mapping*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_device*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC9(struct nvkm_devinit *init)
{
	struct nvkm_subdev *subdev = &init->subdev;
	struct nvkm_device *device = subdev->device;
	u32 patt = 0xdeadbeef;
	struct io_mapping *fb;
	int i;

	/* Map the framebuffer aperture */
	fb = FUNC1(device);
	if (!fb) {
		FUNC5(subdev, "failed to map fb\n");
		return;
	}

	/* Sequencer and refresh off */
	FUNC8(device, 0, 1, FUNC7(device, 0, 1) | 0x20);
	FUNC6(device, NV04_PFB_DEBUG_0, 0, NV04_PFB_DEBUG_0_REFRESH_OFF);

	FUNC6(device, NV04_PFB_BOOT_0, ~0,
		      NV04_PFB_BOOT_0_RAM_AMOUNT_16MB |
		      NV04_PFB_BOOT_0_RAM_WIDTH_128 |
		      NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_16MBIT);

	for (i = 0; i < 4; i++)
		FUNC3(fb, 4 * i, patt);

	FUNC3(fb, 0x400000, patt + 1);

	if (FUNC2(fb, 0) == patt + 1) {
		FUNC6(device, NV04_PFB_BOOT_0,
			      NV04_PFB_BOOT_0_RAM_TYPE,
			      NV04_PFB_BOOT_0_RAM_TYPE_SDRAM_16MBIT);
		FUNC6(device, NV04_PFB_DEBUG_0,
			      NV04_PFB_DEBUG_0_REFRESH_OFF, 0);

		for (i = 0; i < 4; i++)
			FUNC3(fb, 4 * i, patt);

		if ((FUNC2(fb, 0xc) & 0xffff) != (patt & 0xffff))
			FUNC6(device, NV04_PFB_BOOT_0,
				      NV04_PFB_BOOT_0_RAM_WIDTH_128 |
				      NV04_PFB_BOOT_0_RAM_AMOUNT,
				      NV04_PFB_BOOT_0_RAM_AMOUNT_8MB);
	} else
	if ((FUNC2(fb, 0xc) & 0xffff0000) != (patt & 0xffff0000)) {
		FUNC6(device, NV04_PFB_BOOT_0,
			      NV04_PFB_BOOT_0_RAM_WIDTH_128 |
			      NV04_PFB_BOOT_0_RAM_AMOUNT,
			      NV04_PFB_BOOT_0_RAM_AMOUNT_4MB);
	} else
	if (FUNC2(fb, 0) != patt) {
		if (FUNC4(fb, 0x800000, patt))
			FUNC6(device, NV04_PFB_BOOT_0,
				      NV04_PFB_BOOT_0_RAM_AMOUNT,
				      NV04_PFB_BOOT_0_RAM_AMOUNT_8MB);
		else
			FUNC6(device, NV04_PFB_BOOT_0,
				      NV04_PFB_BOOT_0_RAM_AMOUNT,
				      NV04_PFB_BOOT_0_RAM_AMOUNT_4MB);

		FUNC6(device, NV04_PFB_BOOT_0, NV04_PFB_BOOT_0_RAM_TYPE,
			      NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_8MBIT);
	} else
	if (!FUNC4(fb, 0x800000, patt)) {
		FUNC6(device, NV04_PFB_BOOT_0, NV04_PFB_BOOT_0_RAM_AMOUNT,
			      NV04_PFB_BOOT_0_RAM_AMOUNT_8MB);

	}

	/* Refresh on, sequencer on */
	FUNC6(device, NV04_PFB_DEBUG_0, NV04_PFB_DEBUG_0_REFRESH_OFF, 0);
	FUNC8(device, 0, 1, FUNC7(device, 0, 1) & ~0x20);
	FUNC0(fb);
}