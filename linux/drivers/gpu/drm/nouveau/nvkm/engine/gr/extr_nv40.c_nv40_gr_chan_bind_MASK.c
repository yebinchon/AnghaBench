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
struct nvkm_object {int dummy; } ;
struct nvkm_gpuobj {int addr; } ;
struct nv40_gr_chan {int inst; struct nv40_gr* gr; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv40_gr {TYPE_3__ base; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 struct nv40_gr_chan* FUNC0 (struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_gpuobj*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_gpuobj*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_object *object, struct nvkm_gpuobj *parent,
		  int align, struct nvkm_gpuobj **pgpuobj)
{
	struct nv40_gr_chan *chan = FUNC0(object);
	struct nv40_gr *gr = chan->gr;
	int ret = FUNC3(gr->base.engine.subdev.device, gr->size,
				  align, true, parent, pgpuobj);
	if (ret == 0) {
		chan->inst = (*pgpuobj)->addr;
		FUNC4(*pgpuobj);
		FUNC1(gr->base.engine.subdev.device, *pgpuobj);
		FUNC5(*pgpuobj, 0x00000, chan->inst >> 4);
		FUNC2(*pgpuobj);
	}
	return ret;
}