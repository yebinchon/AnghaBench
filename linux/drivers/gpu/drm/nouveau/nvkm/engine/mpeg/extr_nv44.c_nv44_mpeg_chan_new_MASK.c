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
struct nv44_mpeg_chan {int /*<<< orphan*/  head; struct nvkm_object object; struct nvkm_fifo_chan* fifo; struct nv44_mpeg* mpeg; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct nv44_mpeg {TYPE_1__ engine; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nv44_mpeg_chan* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nv44_mpeg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv44_mpeg_chan ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nvkm_oclass const*,struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_fifo_chan *fifoch,
		   const struct nvkm_oclass *oclass,
		   struct nvkm_object **pobject)
{
	struct nv44_mpeg *mpeg = FUNC2(oclass->engine);
	struct nv44_mpeg_chan *chan;
	unsigned long flags;

	if (!(chan = FUNC0(sizeof(*chan), GFP_KERNEL)))
		return -ENOMEM;
	FUNC3(&nv44_mpeg_chan, oclass, &chan->object);
	chan->mpeg = mpeg;
	chan->fifo = fifoch;
	*pobject = &chan->object;

	FUNC4(&mpeg->engine.lock, flags);
	FUNC1(&chan->head, &mpeg->chan);
	FUNC5(&mpeg->engine.lock, flags);
	return 0;
}