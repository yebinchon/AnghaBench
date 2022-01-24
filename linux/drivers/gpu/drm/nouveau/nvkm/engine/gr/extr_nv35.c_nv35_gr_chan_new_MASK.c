#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_gr {int dummy; } ;
struct nvkm_fifo_chan {int chid; } ;
struct nv20_gr_chan {int chid; int /*<<< orphan*/  inst; struct nvkm_object object; struct nv20_gr* gr; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv20_gr {TYPE_3__ base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVKM_MEM_TARGET_INST ; 
 struct nv20_gr_chan* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct nv20_gr* FUNC1 (struct nvkm_gr*) ; 
 int /*<<< orphan*/  nv35_gr_chan ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct nvkm_oclass const*,struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC7(struct nvkm_gr *base, struct nvkm_fifo_chan *fifoch,
		 const struct nvkm_oclass *oclass, struct nvkm_object **pobject)
{
	struct nv20_gr *gr = FUNC1(base);
	struct nv20_gr_chan *chan;
	int ret, i;

	if (!(chan = FUNC0(sizeof(*chan), GFP_KERNEL)))
		return -ENOMEM;
	FUNC5(&nv35_gr_chan, oclass, &chan->object);
	chan->gr = gr;
	chan->chid = fifoch->chid;
	*pobject = &chan->object;

	ret = FUNC4(gr->base.engine.subdev.device,
			      NVKM_MEM_TARGET_INST, 0x577c, 16, true,
			      &chan->inst);
	if (ret)
		return ret;

	FUNC3(chan->inst);
	FUNC6(chan->inst, 0x0028, 0x00000001 | (chan->chid << 24));
	FUNC6(chan->inst, 0x040c, 0x00000101);
	FUNC6(chan->inst, 0x0420, 0x00000111);
	FUNC6(chan->inst, 0x0424, 0x00000060);
	FUNC6(chan->inst, 0x0440, 0x00000080);
	FUNC6(chan->inst, 0x0444, 0xffff0000);
	FUNC6(chan->inst, 0x0448, 0x00000001);
	FUNC6(chan->inst, 0x045c, 0x44400000);
	FUNC6(chan->inst, 0x0488, 0xffff0000);
	for (i = 0x04dc; i < 0x04e4; i += 4)
		FUNC6(chan->inst, i, 0x0fff0000);
	FUNC6(chan->inst, 0x04e8, 0x00011100);
	for (i = 0x0504; i < 0x0544; i += 4)
		FUNC6(chan->inst, i, 0x07ff0000);
	FUNC6(chan->inst, 0x054c, 0x4b7fffff);
	FUNC6(chan->inst, 0x0588, 0x00000080);
	FUNC6(chan->inst, 0x058c, 0x30201000);
	FUNC6(chan->inst, 0x0590, 0x70605040);
	FUNC6(chan->inst, 0x0594, 0xb8a89888);
	FUNC6(chan->inst, 0x0598, 0xf8e8d8c8);
	FUNC6(chan->inst, 0x05ac, 0xb0000000);
	for (i = 0x0604; i < 0x0644; i += 4)
		FUNC6(chan->inst, i, 0x00010588);
	for (i = 0x0644; i < 0x0684; i += 4)
		FUNC6(chan->inst, i, 0x00030303);
	for (i = 0x06c4; i < 0x0704; i += 4)
		FUNC6(chan->inst, i, 0x0008aae4);
	for (i = 0x0704; i < 0x0744; i += 4)
		FUNC6(chan->inst, i, 0x01012000);
	for (i = 0x0744; i < 0x0784; i += 4)
		FUNC6(chan->inst, i, 0x00080008);
	FUNC6(chan->inst, 0x0860, 0x00040000);
	FUNC6(chan->inst, 0x0864, 0x00010000);
	for (i = 0x0868; i < 0x0878; i += 4)
		FUNC6(chan->inst, i, 0x00040004);
	for (i = 0x1f1c; i <= 0x308c ; i += 16) {
		FUNC6(chan->inst, i + 0, 0x10700ff9);
		FUNC6(chan->inst, i + 4, 0x0436086c);
		FUNC6(chan->inst, i + 8, 0x000c001b);
	}
	for (i = 0x30bc; i < 0x30cc; i += 4)
		FUNC6(chan->inst, i, 0x0000ffff);
	FUNC6(chan->inst, 0x3450, 0x3f800000);
	FUNC6(chan->inst, 0x380c, 0x3f800000);
	FUNC6(chan->inst, 0x3820, 0x3f800000);
	FUNC6(chan->inst, 0x384c, 0x40000000);
	FUNC6(chan->inst, 0x3850, 0x3f800000);
	FUNC6(chan->inst, 0x3854, 0x3f000000);
	FUNC6(chan->inst, 0x385c, 0x40000000);
	FUNC6(chan->inst, 0x3860, 0x3f800000);
	FUNC6(chan->inst, 0x3868, 0xbf800000);
	FUNC6(chan->inst, 0x3870, 0xbf800000);
	FUNC2(chan->inst);
	return 0;
}