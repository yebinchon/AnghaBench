#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_gr {int dummy; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_fb_tile {int limit; int pitch; int addr; int zcomp; } ;
struct nvkm_device {int chipset; struct nvkm_fifo* fifo; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv20_gr {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV10_PGRAPH_RDI_DATA ; 
 int /*<<< orphan*/  NV10_PGRAPH_RDI_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 struct nv20_gr* FUNC5 (struct nvkm_gr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

void
FUNC9(struct nvkm_gr *base, int i, struct nvkm_fb_tile *tile)
{
	struct nv20_gr *gr = FUNC5(base);
	struct nvkm_device *device = gr->base.engine.subdev.device;
	struct nvkm_fifo *fifo = device->fifo;
	unsigned long flags;

	FUNC6(fifo, &flags);
	FUNC4(&gr->base);

	FUNC8(device, FUNC1(i), tile->limit);
	FUNC8(device, FUNC2(i), tile->pitch);
	FUNC8(device, FUNC0(i), tile->addr);

	FUNC8(device, NV10_PGRAPH_RDI_INDEX, 0x00EA0030 + 4 * i);
	FUNC8(device, NV10_PGRAPH_RDI_DATA, tile->limit);
	FUNC8(device, NV10_PGRAPH_RDI_INDEX, 0x00EA0050 + 4 * i);
	FUNC8(device, NV10_PGRAPH_RDI_DATA, tile->pitch);
	FUNC8(device, NV10_PGRAPH_RDI_INDEX, 0x00EA0010 + 4 * i);
	FUNC8(device, NV10_PGRAPH_RDI_DATA, tile->addr);

	if (device->chipset != 0x34) {
		FUNC8(device, FUNC3(i), tile->zcomp);
		FUNC8(device, NV10_PGRAPH_RDI_INDEX, 0x00ea0090 + 4 * i);
		FUNC8(device, NV10_PGRAPH_RDI_DATA, tile->zcomp);
	}

	FUNC7(fifo, &flags);
}