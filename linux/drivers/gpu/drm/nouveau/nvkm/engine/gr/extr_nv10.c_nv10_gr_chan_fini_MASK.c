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
struct nvkm_object {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv10_gr_chan {struct nv10_gr* gr; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv10_gr {int /*<<< orphan*/  lock; TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PGRAPH_FIFO ; 
 struct nv10_gr_chan* FUNC0 (struct nvkm_object*) ; 
 struct nv10_gr_chan* FUNC1 (struct nv10_gr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv10_gr_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_object *object, bool suspend)
{
	struct nv10_gr_chan *chan = FUNC0(object);
	struct nv10_gr *gr = chan->gr;
	struct nvkm_device *device = gr->base.engine.subdev.device;
	unsigned long flags;

	FUNC4(&gr->lock, flags);
	FUNC3(device, NV04_PGRAPH_FIFO, 0x00000001, 0x00000000);
	if (FUNC1(gr) == chan)
		FUNC2(chan);
	FUNC3(device, NV04_PGRAPH_FIFO, 0x00000001, 0x00000001);
	FUNC5(&gr->lock, flags);
	return 0;
}