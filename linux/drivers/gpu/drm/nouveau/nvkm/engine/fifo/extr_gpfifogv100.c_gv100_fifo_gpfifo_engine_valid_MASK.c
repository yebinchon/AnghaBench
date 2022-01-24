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
struct nvkm_subdev {int /*<<< orphan*/  mutex; struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  inst; TYPE_2__* fifo; } ;
struct gk104_fifo_chan {int /*<<< orphan*/  runl; TYPE_3__ base; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct TYPE_5__ {TYPE_1__ engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gk104_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int const,int const) ; 

__attribute__((used)) static int
FUNC8(struct gk104_fifo_chan *chan, bool ce, bool valid)
{
	struct nvkm_subdev *subdev = &chan->base.fifo->engine.subdev;
	struct nvkm_device *device = subdev->device;
	const u32 mask = ce ? 0x00020000 : 0x00010000;
	const u32 data = valid ? mask : 0x00000000;
	int ret;

	/* Block runlist to prevent the channel from being rescheduled. */
	FUNC2(&subdev->mutex);
	FUNC6(device, 0x002630, FUNC0(chan->runl), FUNC0(chan->runl));

	/* Preempt the channel. */
	ret = FUNC1(chan);
	if (ret == 0) {
		/* Update engine context validity. */
		FUNC5(chan->base.inst);
		FUNC7(chan->base.inst, 0x0ac, mask, data);
		FUNC4(chan->base.inst);
	}

	/* Resume runlist. */
	FUNC6(device, 0x002630, FUNC0(chan->runl), 0);
	FUNC3(&subdev->mutex);
	return ret;
}