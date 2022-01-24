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
typedef  int u32 ;
struct nvkm_subdev {size_t index; struct nvkm_device* device; } ;
struct nvkm_engine {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {int chid; } ;
struct gf100_fifo_chan {int killed; int /*<<< orphan*/  head; TYPE_1__ base; } ;
struct TYPE_6__ {struct nvkm_engine engine; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {unsigned long long mask; int /*<<< orphan*/  work; } ;
struct gf100_fifo {TYPE_3__ base; TYPE_2__ recover; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/ * nvkm_subdev_name ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct gf100_fifo *fifo, struct nvkm_engine *engine,
		   struct gf100_fifo_chan *chan)
{
	struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 chid = chan->base.chid;

	FUNC2(subdev, "%s engine fault on channel %d, recovering...\n",
		   nvkm_subdev_name[engine->subdev.index], chid);
	FUNC0(&fifo->base.lock);

	FUNC4(device, 0x003004 + (chid * 0x08), 0x00000001, 0x00000000);
	FUNC1(&chan->head);
	chan->killed = true;

	if (engine != &fifo->base.engine)
		fifo->recover.mask |= 1ULL << engine->subdev.index;
	FUNC5(&fifo->recover.work);
	FUNC3(&fifo->base, chid);
}