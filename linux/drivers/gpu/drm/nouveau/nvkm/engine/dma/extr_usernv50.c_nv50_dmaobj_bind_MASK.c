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
struct TYPE_8__ {int /*<<< orphan*/  start; int /*<<< orphan*/  limit; TYPE_3__* dma; } ;
struct nv50_dmaobj {int flags0; int flags5; TYPE_4__ base; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct nv50_dmaobj* FUNC1 (struct nvkm_dmaobj*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_gpuobj*) ; 
 int FUNC3 (struct nvkm_device*,int,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_gpuobj*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct nvkm_dmaobj *base, struct nvkm_gpuobj *parent,
		 int align, struct nvkm_gpuobj **pgpuobj)
{
	struct nv50_dmaobj *dmaobj = FUNC1(base);
	struct nvkm_device *device = dmaobj->base.dma->engine.subdev.device;
	int ret;

	ret = FUNC3(device, 24, align, false, parent, pgpuobj);
	if (ret == 0) {
		FUNC4(*pgpuobj);
		FUNC5(*pgpuobj, 0x00, dmaobj->flags0);
		FUNC5(*pgpuobj, 0x04, FUNC0(dmaobj->base.limit));
		FUNC5(*pgpuobj, 0x08, FUNC0(dmaobj->base.start));
		FUNC5(*pgpuobj, 0x0c, FUNC6(dmaobj->base.limit) << 24 |
					  FUNC6(dmaobj->base.start));
		FUNC5(*pgpuobj, 0x10, 0x00000000);
		FUNC5(*pgpuobj, 0x14, dmaobj->flags5);
		FUNC2(*pgpuobj);
	}

	return ret;
}