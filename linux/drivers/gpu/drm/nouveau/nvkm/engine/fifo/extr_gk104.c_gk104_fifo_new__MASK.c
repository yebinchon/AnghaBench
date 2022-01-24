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
struct gk104_fifo_func {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct gk104_fifo {struct nvkm_fifo base; TYPE_1__ recover; struct gk104_fifo_func const* func; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gk104_fifo_ ; 
 int /*<<< orphan*/  gk104_fifo_recover_work ; 
 struct gk104_fifo* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct nvkm_device*,int,int,struct nvkm_fifo*) ; 

int
FUNC3(const struct gk104_fifo_func *func, struct nvkm_device *device,
		int index, int nr, struct nvkm_fifo **pfifo)
{
	struct gk104_fifo *fifo;

	if (!(fifo = FUNC1(sizeof(*fifo), GFP_KERNEL)))
		return -ENOMEM;
	fifo->func = func;
	FUNC0(&fifo->recover.work, gk104_fifo_recover_work);
	*pfifo = &fifo->base;

	return FUNC2(&gk104_fifo_, device, index, nr, &fifo->base);
}