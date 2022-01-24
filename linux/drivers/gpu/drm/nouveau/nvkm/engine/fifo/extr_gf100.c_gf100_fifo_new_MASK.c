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
struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct gf100_fifo {struct nvkm_fifo base; TYPE_1__ recover; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gf100_fifo ; 
 int /*<<< orphan*/  gf100_fifo_recover_work ; 
 struct gf100_fifo* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct nvkm_device*,int,int,struct nvkm_fifo*) ; 

int
FUNC4(struct nvkm_device *device, int index, struct nvkm_fifo **pfifo)
{
	struct gf100_fifo *fifo;

	if (!(fifo = FUNC2(sizeof(*fifo), GFP_KERNEL)))
		return -ENOMEM;
	FUNC0(&fifo->chan);
	FUNC1(&fifo->recover.work, gf100_fifo_recover_work);
	*pfifo = &fifo->base;

	return FUNC3(&gf100_fifo, device, index, 128, &fifo->base);
}