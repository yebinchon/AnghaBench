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
struct nvkm_device {int chipset; } ;
struct io_mapping {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PFB_CFG0 ; 
 int /*<<< orphan*/  NV10_PFB_REFCTRL ; 
 int /*<<< orphan*/  NV10_PFB_REFCTRL_VALID_1 ; 
 int /*<<< orphan*/  FUNC0 (struct io_mapping*) ; 
 struct io_mapping* FUNC1 (struct nvkm_device*) ; 
 int FUNC2 (struct io_mapping*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct io_mapping*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct nvkm_devinit *init)
{
	struct nvkm_subdev *subdev = &init->subdev;
	struct nvkm_device *device = subdev->device;
	uint32_t mask = (device->chipset >= 0x25 ? 0x300 : 0x900);
	uint32_t amount, off;
	struct io_mapping *fb;

	/* Map the framebuffer aperture */
	fb = FUNC1(device);
	if (!fb) {
		FUNC4(subdev, "failed to map fb\n");
		return;
	}

	FUNC7(device, NV10_PFB_REFCTRL, NV10_PFB_REFCTRL_VALID_1);

	/* Allow full addressing */
	FUNC5(device, NV04_PFB_CFG0, 0, mask);

	amount = FUNC6(device, 0x10020c);
	for (off = amount; off > 0x2000000; off -= 0x2000000)
		FUNC3(fb, off - 4, off);

	amount = FUNC6(device, 0x10020c);
	if (amount != FUNC2(fb, amount - 4))
		/* IC missing - disable the upper half memory space. */
		FUNC5(device, NV04_PFB_CFG0, mask, 0);

	FUNC0(fb);
}