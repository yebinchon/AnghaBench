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
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {int post; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv50_devinit {TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct nv50_devinit* FUNC1 (struct nvkm_devinit*) ; 
 int FUNC2 (struct nvkm_device*,int) ; 

void
FUNC3(struct nvkm_devinit *base)
{
	struct nv50_devinit *init = FUNC1(base);
	struct nvkm_subdev *subdev = &init->base.subdev;
	struct nvkm_device *device = subdev->device;

	/*
	 * This bit is set by devinit, and flips back to 0 on suspend. We
	 * can use it as a reliable way to know whether we should run devinit.
	 */
	base->post = ((FUNC2(device, 0x2240c) & FUNC0(1)) == 0);
}