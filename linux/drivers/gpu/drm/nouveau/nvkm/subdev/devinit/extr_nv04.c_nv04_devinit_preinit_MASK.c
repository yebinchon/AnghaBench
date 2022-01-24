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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {int post; struct nvkm_subdev subdev; } ;
struct nv04_devinit {scalar_t__ owner; TYPE_1__ base; } ;

/* Variables and functions */
 struct nv04_devinit* FUNC0 (struct nvkm_devinit*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int,int) ; 
 int FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct nvkm_devinit *base)
{
	struct nv04_devinit *init = FUNC0(base);
	struct nvkm_subdev *subdev = &init->base.subdev;
	struct nvkm_device *device = subdev->device;

	/* make i2c busses accessible */
	FUNC2(device, 0x000200, 0x00000001, 0x00000001);

	/* unslave crtcs */
	if (init->owner < 0)
		init->owner = FUNC4(device);
	FUNC5(device, 0);

	if (!init->base.post) {
		u32 htotal = FUNC3(device, 0, 0x06);
		htotal |= (FUNC3(device, 0, 0x07) & 0x01) << 8;
		htotal |= (FUNC3(device, 0, 0x07) & 0x20) << 4;
		htotal |= (FUNC3(device, 0, 0x25) & 0x01) << 10;
		htotal |= (FUNC3(device, 0, 0x41) & 0x01) << 11;
		if (!htotal) {
			FUNC1(subdev, "adaptor not initialised\n");
			init->base.post = true;
		}
	}
}