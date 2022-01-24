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
struct nvkm_oclass {int /*<<< orphan*/  engine; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nv31_mpeg_chan {struct nvkm_object object; struct nvkm_fifo_chan* fifo; struct nv31_mpeg* mpeg; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct nv31_mpeg {TYPE_1__ engine; struct nv31_mpeg_chan* chan; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nv31_mpeg_chan* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct nv31_mpeg* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv31_mpeg_chan ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nvkm_oclass const*,struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC5(struct nvkm_fifo_chan *fifoch,
		   const struct nvkm_oclass *oclass,
		   struct nvkm_object **pobject)
{
	struct nv31_mpeg *mpeg = FUNC1(oclass->engine);
	struct nv31_mpeg_chan *chan;
	unsigned long flags;
	int ret = -EBUSY;

	if (!(chan = FUNC0(sizeof(*chan), GFP_KERNEL)))
		return -ENOMEM;
	FUNC2(&nv31_mpeg_chan, oclass, &chan->object);
	chan->mpeg = mpeg;
	chan->fifo = fifoch;
	*pobject = &chan->object;

	FUNC3(&mpeg->engine.lock, flags);
	if (!mpeg->chan) {
		mpeg->chan = chan;
		ret = 0;
	}
	FUNC4(&mpeg->engine.lock, flags);
	return ret;
}