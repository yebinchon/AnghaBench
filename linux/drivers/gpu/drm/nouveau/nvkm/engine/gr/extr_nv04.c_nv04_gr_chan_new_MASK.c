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
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_gr {int dummy; } ;
struct nvkm_fifo_chan {size_t chid; } ;
struct nv04_gr_chan {size_t chid; struct nvkm_object object; struct nv04_gr* gr; } ;
struct nv04_gr {int /*<<< orphan*/  lock; struct nv04_gr_chan** chan; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NV04_PGRAPH_DEBUG_3 ; 
 int* FUNC0 (struct nv04_gr_chan*,int /*<<< orphan*/ ) ; 
 struct nv04_gr_chan* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct nv04_gr* FUNC2 (struct nvkm_gr*) ; 
 int /*<<< orphan*/  nv04_gr_chan ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nvkm_oclass const*,struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_gr *base, struct nvkm_fifo_chan *fifoch,
		 const struct nvkm_oclass *oclass, struct nvkm_object **pobject)
{
	struct nv04_gr *gr = FUNC2(base);
	struct nv04_gr_chan *chan;
	unsigned long flags;

	if (!(chan = FUNC1(sizeof(*chan), GFP_KERNEL)))
		return -ENOMEM;
	FUNC3(&nv04_gr_chan, oclass, &chan->object);
	chan->gr = gr;
	chan->chid = fifoch->chid;
	*pobject = &chan->object;

	*FUNC0(chan, NV04_PGRAPH_DEBUG_3) = 0xfad4ff31;

	FUNC4(&gr->lock, flags);
	gr->chan[chan->chid] = chan;
	FUNC5(&gr->lock, flags);
	return 0;
}