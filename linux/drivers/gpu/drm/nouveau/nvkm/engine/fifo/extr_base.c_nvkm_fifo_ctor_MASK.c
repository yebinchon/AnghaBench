#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvkm_fifo_func {scalar_t__ uevent_init; } ;
struct nvkm_fifo {int nr; int /*<<< orphan*/  kevent; int /*<<< orphan*/  cevent; int /*<<< orphan*/  uevent; int /*<<< orphan*/  engine; int /*<<< orphan*/  mask; int /*<<< orphan*/  lock; int /*<<< orphan*/  chan; struct nvkm_fifo_func const* func; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NVKM_FIFO_CHID_NR ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct nvkm_device*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvkm_fifo ; 
 int /*<<< orphan*/  nvkm_fifo_cevent_func ; 
 int /*<<< orphan*/  nvkm_fifo_kevent_func ; 
 int /*<<< orphan*/  nvkm_fifo_uevent_func ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(const struct nvkm_fifo_func *func, struct nvkm_device *device,
	       int index, int nr, struct nvkm_fifo *fifo)
{
	int ret;

	fifo->func = func;
	FUNC0(&fifo->chan);
	FUNC5(&fifo->lock);

	if (FUNC1(fifo->nr > NVKM_FIFO_CHID_NR))
		fifo->nr = NVKM_FIFO_CHID_NR;
	else
		fifo->nr = nr;
	FUNC2(fifo->mask, 0, fifo->nr);

	ret = FUNC3(&nvkm_fifo, device, index, true, &fifo->engine);
	if (ret)
		return ret;

	if (func->uevent_init) {
		ret = FUNC4(&nvkm_fifo_uevent_func, 1, 1,
				      &fifo->uevent);
		if (ret)
			return ret;
	}

	ret = FUNC4(&nvkm_fifo_cevent_func, 1, 1, &fifo->cevent);
	if (ret)
		return ret;

	return FUNC4(&nvkm_fifo_kevent_func, 1, nr, &fifo->kevent);
}