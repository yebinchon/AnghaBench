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
struct nvkm_object {int dummy; } ;
struct nvkm_gpuobj {int dummy; } ;
struct gf100_gr_chan {int mmio_nr; TYPE_4__* mmio_vma; struct gf100_gr* gr; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gf100_gr {int size; int* data; int /*<<< orphan*/  firmware; TYPE_3__ base; } ;
struct TYPE_8__ {int addr; } ;

/* Variables and functions */
 struct gf100_gr_chan* FUNC0 (struct nvkm_object*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_gpuobj*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_gpuobj*,int,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct nvkm_object *object, struct nvkm_gpuobj *parent,
		   int align, struct nvkm_gpuobj **pgpuobj)
{
	struct gf100_gr_chan *chan = FUNC0(object);
	struct gf100_gr *gr = chan->gr;
	int ret, i;

	ret = FUNC3(gr->base.engine.subdev.device, gr->size,
			      align, false, parent, pgpuobj);
	if (ret)
		return ret;

	FUNC4(*pgpuobj);
	for (i = 0; i < gr->size; i += 4)
		FUNC5(*pgpuobj, i, gr->data[i / 4]);

	if (!gr->firmware) {
		FUNC5(*pgpuobj, 0x00, chan->mmio_nr / 2);
		FUNC5(*pgpuobj, 0x04, chan->mmio_vma->addr >> 8);
	} else {
		FUNC5(*pgpuobj, 0xf4, 0);
		FUNC5(*pgpuobj, 0xf8, 0);
		FUNC5(*pgpuobj, 0x10, chan->mmio_nr / 2);
		FUNC5(*pgpuobj, 0x14, FUNC1(chan->mmio_vma->addr));
		FUNC5(*pgpuobj, 0x18, FUNC6(chan->mmio_vma->addr));
		FUNC5(*pgpuobj, 0x1c, 1);
		FUNC5(*pgpuobj, 0x20, 0);
		FUNC5(*pgpuobj, 0x28, 0);
		FUNC5(*pgpuobj, 0x2c, 0);
	}
	FUNC2(*pgpuobj);
	return 0;
}