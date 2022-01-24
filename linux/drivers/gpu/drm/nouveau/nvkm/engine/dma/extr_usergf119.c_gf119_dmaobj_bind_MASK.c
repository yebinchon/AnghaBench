#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nvkm_gpuobj {int dummy; } ;
struct nvkm_dmaobj {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {int start; int limit; TYPE_3__* dma; } ;
struct gf119_dmaobj {int flags0; TYPE_4__ base; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;

/* Variables and functions */
 struct gf119_dmaobj* FUNC0 (struct nvkm_dmaobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_gpuobj*) ; 
 int FUNC2 (struct nvkm_device*,int,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_gpuobj*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nvkm_dmaobj *base, struct nvkm_gpuobj *parent,
		  int align, struct nvkm_gpuobj **pgpuobj)
{
	struct gf119_dmaobj *dmaobj = FUNC0(base);
	struct nvkm_device *device = dmaobj->base.dma->engine.subdev.device;
	int ret;

	ret = FUNC2(device, 24, align, false, parent, pgpuobj);
	if (ret == 0) {
		FUNC3(*pgpuobj);
		FUNC4(*pgpuobj, 0x00, dmaobj->flags0);
		FUNC4(*pgpuobj, 0x04, dmaobj->base.start >> 8);
		FUNC4(*pgpuobj, 0x08, dmaobj->base.limit >> 8);
		FUNC4(*pgpuobj, 0x0c, 0x00000000);
		FUNC4(*pgpuobj, 0x10, 0x00000000);
		FUNC4(*pgpuobj, 0x14, 0x00000000);
		FUNC1(*pgpuobj);
	}

	return ret;
}