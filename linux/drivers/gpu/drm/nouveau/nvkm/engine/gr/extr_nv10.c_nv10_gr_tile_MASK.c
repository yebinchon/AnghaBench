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
struct nvkm_fb_tile {int /*<<< orphan*/  addr; int /*<<< orphan*/  pitch; int /*<<< orphan*/  limit; } ;
struct nvkm_device {struct nvkm_fifo* fifo; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv10_gr {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 struct nv10_gr* FUNC4 (struct nvkm_gr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(struct nvkm_gr *base, int i, struct nvkm_fb_tile *tile)
{
	struct nv10_gr *gr = FUNC4(base);
	struct nvkm_device *device = gr->base.engine.subdev.device;
	struct nvkm_fifo *fifo = device->fifo;
	unsigned long flags;

	FUNC5(fifo, &flags);
	FUNC3(&gr->base);

	FUNC7(device, FUNC1(i), tile->limit);
	FUNC7(device, FUNC2(i), tile->pitch);
	FUNC7(device, FUNC0(i), tile->addr);

	FUNC6(fifo, &flags);
}