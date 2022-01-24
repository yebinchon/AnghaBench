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
struct nvkm_fifo_chan {int dummy; } ;
struct nv50_gr_chan {struct nvkm_object object; struct nv50_gr* gr; } ;
struct nv50_gr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nv50_gr_chan* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct nv50_gr* FUNC1 (struct nvkm_gr*) ; 
 int /*<<< orphan*/  nv50_gr_chan ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nvkm_oclass const*,struct nvkm_object*) ; 

int
FUNC3(struct nvkm_gr *base, struct nvkm_fifo_chan *fifoch,
		 const struct nvkm_oclass *oclass, struct nvkm_object **pobject)
{
	struct nv50_gr *gr = FUNC1(base);
	struct nv50_gr_chan *chan;

	if (!(chan = FUNC0(sizeof(*chan), GFP_KERNEL)))
		return -ENOMEM;
	FUNC2(&nv50_gr_chan, oclass, &chan->object);
	chan->gr = gr;
	*pobject = &chan->object;
	return 0;
}