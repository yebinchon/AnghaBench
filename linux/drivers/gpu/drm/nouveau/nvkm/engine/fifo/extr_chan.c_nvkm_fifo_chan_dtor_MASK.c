#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {TYPE_2__* inst; TYPE_2__* push; scalar_t__ vmm; scalar_t__ user; int /*<<< orphan*/  head; int /*<<< orphan*/  chid; TYPE_1__* func; struct nvkm_fifo* fifo; } ;
struct nvkm_fifo {int /*<<< orphan*/  lock; int /*<<< orphan*/  mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  memory; } ;
struct TYPE_3__ {void* (* dtor ) (struct nvkm_fifo_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nvkm_fifo_chan* FUNC4 (struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC10 (struct nvkm_fifo_chan*) ; 

__attribute__((used)) static void *
FUNC11(struct nvkm_object *object)
{
	struct nvkm_fifo_chan *chan = FUNC4(object);
	struct nvkm_fifo *fifo = chan->fifo;
	void *data = chan->func->dtor(chan);
	unsigned long flags;

	FUNC8(&fifo->lock, flags);
	if (!FUNC3(&chan->head)) {
		FUNC0(chan->chid, fifo->mask);
		FUNC2(&chan->head);
	}
	FUNC9(&fifo->lock, flags);

	if (chan->user)
		FUNC1(chan->user);

	if (chan->vmm) {
		FUNC6(chan->vmm, chan->inst->memory);
		FUNC7(&chan->vmm);
	}

	FUNC5(&chan->push);
	FUNC5(&chan->inst);
	return data;
}