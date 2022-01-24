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
struct nvkm_ramht {int bits; TYPE_3__* gpuobj; } ;
struct nvkm_memory {int dummy; } ;
struct nvkm_instmem {struct nvkm_memory* ramfc; struct nvkm_memory* ramro; struct nvkm_ramht* ramht; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_device {struct nvkm_instmem* imem; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_8__ {int nr; TYPE_2__ engine; } ;
struct nv04_fifo {TYPE_4__ base; } ;
struct TYPE_7__ {int addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV03_PFIFO_CACHE1_PUSH0 ; 
 int /*<<< orphan*/  NV03_PFIFO_CACHE1_PUSH1 ; 
 int /*<<< orphan*/  NV03_PFIFO_CACHES ; 
 int /*<<< orphan*/  NV03_PFIFO_INTR_0 ; 
 int /*<<< orphan*/  NV03_PFIFO_INTR_EN_0 ; 
 int /*<<< orphan*/  NV03_PFIFO_RAMFC ; 
 int /*<<< orphan*/  NV03_PFIFO_RAMHT ; 
 int /*<<< orphan*/  NV03_PFIFO_RAMRO ; 
 int /*<<< orphan*/  NV04_PFIFO_CACHE1_PULL0 ; 
 int /*<<< orphan*/  NV04_PFIFO_DELAY_0 ; 
 int /*<<< orphan*/  NV04_PFIFO_DMA_TIMESLICE ; 
 struct nv04_fifo* FUNC0 (struct nvkm_fifo*) ; 
 int FUNC1 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_fifo *base)
{
	struct nv04_fifo *fifo = FUNC0(base);
	struct nvkm_device *device = fifo->base.engine.subdev.device;
	struct nvkm_instmem *imem = device->imem;
	struct nvkm_ramht *ramht = imem->ramht;
	struct nvkm_memory *ramro = imem->ramro;
	struct nvkm_memory *ramfc = imem->ramfc;

	FUNC2(device, NV04_PFIFO_DELAY_0, 0x000000ff);
	FUNC2(device, NV04_PFIFO_DMA_TIMESLICE, 0x0101ffff);

	FUNC2(device, NV03_PFIFO_RAMHT, (0x03 << 24) /* search 128 */ |
					    ((ramht->bits - 9) << 16) |
					    (ramht->gpuobj->addr >> 8));
	FUNC2(device, NV03_PFIFO_RAMRO, FUNC1(ramro) >> 8);
	FUNC2(device, NV03_PFIFO_RAMFC, FUNC1(ramfc) >> 8 |
					    0x00010000);

	FUNC2(device, NV03_PFIFO_CACHE1_PUSH1, fifo->base.nr - 1);

	FUNC2(device, NV03_PFIFO_INTR_0, 0xffffffff);
	FUNC2(device, NV03_PFIFO_INTR_EN_0, 0xffffffff);

	FUNC2(device, NV03_PFIFO_CACHE1_PUSH0, 1);
	FUNC2(device, NV04_PFIFO_CACHE1_PULL0, 1);
	FUNC2(device, NV03_PFIFO_CACHES, 1);
}