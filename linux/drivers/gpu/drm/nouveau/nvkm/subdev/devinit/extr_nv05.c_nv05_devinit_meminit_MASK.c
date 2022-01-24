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
typedef  scalar_t__ u16 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {struct nvkm_subdev subdev; } ;
struct nvkm_device {struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;
struct io_mapping {int dummy; } ;

/* Variables and functions */
 int NV04_PFB_BOOT_0 ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT_16MB ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT_32MB ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT_4MB ; 
 int NV04_PFB_BOOT_0_RAM_AMOUNT_8MB ; 
 int NV04_PFB_BOOT_0_RAM_WIDTH_128 ; 
 int NV04_PFB_BOOT_0_UMA_ENABLE ; 
 int NV04_PFB_CFG0 ; 
 int NV04_PFB_CFG0_SCRAMBLE ; 
 int NV04_PFB_CFG1 ; 
 int NV04_PFB_DEBUG_0 ; 
 int NV04_PFB_DEBUG_0_REFRESH_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*) ; 
 int /*<<< orphan*/  FUNC2 (struct io_mapping*) ; 
 struct io_mapping* FUNC3 (struct nvkm_device*) ; 
 scalar_t__ FUNC4 (struct io_mapping*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct io_mapping*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct io_mapping*,int,scalar_t__) ; 
 int FUNC7 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_device*,int,int,int) ; 
 int FUNC11 (struct nvkm_device*,int) ; 
 int FUNC12 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nvkm_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct nvkm_device*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC15(struct nvkm_devinit *init)
{
	static const u8 default_config_tab[][2] = {
		{ 0x24, 0x00 },
		{ 0x28, 0x00 },
		{ 0x24, 0x01 },
		{ 0x1f, 0x00 },
		{ 0x0f, 0x00 },
		{ 0x17, 0x00 },
		{ 0x06, 0x00 },
		{ 0x00, 0x00 }
	};
	struct nvkm_subdev *subdev = &init->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_bios *bios = device->bios;
	struct io_mapping *fb;
	u32 patt = 0xdeadbeef;
	u16 data;
	u8 strap, ramcfg[2];
	int i, v;

	/* Map the framebuffer aperture */
	fb = FUNC3(device);
	if (!fb) {
		FUNC9(subdev, "failed to map fb\n");
		return;
	}

	strap = (FUNC11(device, 0x101000) & 0x0000003c) >> 2;
	if ((data = FUNC1(bios))) {
		ramcfg[0] = FUNC7(bios, data + 2 * strap + 0);
		ramcfg[1] = FUNC7(bios, data + 2 * strap + 1);
	} else {
		ramcfg[0] = default_config_tab[strap][0];
		ramcfg[1] = default_config_tab[strap][1];
	}

	/* Sequencer off */
	FUNC14(device, 0, 1, FUNC12(device, 0, 1) | 0x20);

	if (FUNC11(device, NV04_PFB_BOOT_0) & NV04_PFB_BOOT_0_UMA_ENABLE)
		goto out;

	FUNC10(device, NV04_PFB_DEBUG_0, NV04_PFB_DEBUG_0_REFRESH_OFF, 0);

	/* If present load the hardcoded scrambling table */
	if (data) {
		for (i = 0, data += 0x10; i < 8; i++, data += 4) {
			u32 scramble = FUNC8(bios, data);
			FUNC13(device, FUNC0(i), scramble);
		}
	}

	/* Set memory type/width/length defaults depending on the straps */
	FUNC10(device, NV04_PFB_BOOT_0, 0x3f, ramcfg[0]);

	if (ramcfg[1] & 0x80)
		FUNC10(device, NV04_PFB_CFG0, 0, NV04_PFB_CFG0_SCRAMBLE);

	FUNC10(device, NV04_PFB_CFG1, 0x700001, (ramcfg[1] & 1) << 20);
	FUNC10(device, NV04_PFB_CFG1, 0, 1);

	/* Probe memory bus width */
	for (i = 0; i < 4; i++)
		FUNC5(fb, 4 * i, patt);

	if (FUNC4(fb, 0xc) != patt)
		FUNC10(device, NV04_PFB_BOOT_0,
			  NV04_PFB_BOOT_0_RAM_WIDTH_128, 0);

	/* Probe memory length */
	v = FUNC11(device, NV04_PFB_BOOT_0) & NV04_PFB_BOOT_0_RAM_AMOUNT;

	if (v == NV04_PFB_BOOT_0_RAM_AMOUNT_32MB &&
	    (!FUNC6(fb, 0x1000000, ++patt) ||
	     !FUNC6(fb, 0, ++patt)))
		FUNC10(device, NV04_PFB_BOOT_0, NV04_PFB_BOOT_0_RAM_AMOUNT,
			  NV04_PFB_BOOT_0_RAM_AMOUNT_16MB);

	if (v == NV04_PFB_BOOT_0_RAM_AMOUNT_16MB &&
	    !FUNC6(fb, 0x800000, ++patt))
		FUNC10(device, NV04_PFB_BOOT_0, NV04_PFB_BOOT_0_RAM_AMOUNT,
			  NV04_PFB_BOOT_0_RAM_AMOUNT_8MB);

	if (!FUNC6(fb, 0x400000, ++patt))
		FUNC10(device, NV04_PFB_BOOT_0, NV04_PFB_BOOT_0_RAM_AMOUNT,
			  NV04_PFB_BOOT_0_RAM_AMOUNT_4MB);

out:
	/* Sequencer on */
	FUNC14(device, 0, 1, FUNC12(device, 0, 1) & ~0x20);
	FUNC2(fb);
}