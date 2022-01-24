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
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_gr {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nv40_gr_chan {struct nv40_gr* gr; int /*<<< orphan*/  head; struct nvkm_object object; struct nvkm_fifo_chan* fifo; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct nv40_gr {TYPE_2__ base; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nv40_gr_chan* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nv40_gr* FUNC2 (struct nvkm_gr*) ; 
 int /*<<< orphan*/  nv40_gr_chan ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nvkm_oclass const*,struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC6(struct nvkm_gr *base, struct nvkm_fifo_chan *fifoch,
		 const struct nvkm_oclass *oclass, struct nvkm_object **pobject)
{
	struct nv40_gr *gr = FUNC2(base);
	struct nv40_gr_chan *chan;
	unsigned long flags;

	if (!(chan = FUNC0(sizeof(*chan), GFP_KERNEL)))
		return -ENOMEM;
	FUNC3(&nv40_gr_chan, oclass, &chan->object);
	chan->gr = gr;
	chan->fifo = fifoch;
	*pobject = &chan->object;

	FUNC4(&chan->gr->base.engine.lock, flags);
	FUNC1(&chan->head, &gr->chan);
	FUNC5(&chan->gr->base.engine.lock, flags);
	return 0;
}