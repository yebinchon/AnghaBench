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
struct nvkm_sw {int dummy; } ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {struct nvkm_object object; } ;
struct nv04_sw_chan {TYPE_1__ base; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nv04_sw_chan* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv04_sw_chan ; 
 int FUNC2 (int /*<<< orphan*/ *,struct nvkm_sw*,struct nvkm_fifo_chan*,struct nvkm_oclass const*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_sw *sw, struct nvkm_fifo_chan *fifo,
		 const struct nvkm_oclass *oclass, struct nvkm_object **pobject)
{
	struct nv04_sw_chan *chan;

	if (!(chan = FUNC1(sizeof(*chan), GFP_KERNEL)))
		return -ENOMEM;
	FUNC0(&chan->ref, 0);
	*pobject = &chan->base.object;

	return FUNC2(&nv04_sw_chan, sw, fifo, oclass, &chan->base);
}