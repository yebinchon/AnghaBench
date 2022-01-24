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
struct nvkm_gpuobj {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__* engine; } ;
struct nv44_mpeg_chan {int /*<<< orphan*/  inst; TYPE_3__ object; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 struct nv44_mpeg_chan* FUNC0 (struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_gpuobj*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_gpuobj*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nvkm_object *object, struct nvkm_gpuobj *parent,
		    int align, struct nvkm_gpuobj **pgpuobj)
{
	struct nv44_mpeg_chan *chan = FUNC0(object);
	int ret = FUNC2(chan->object.engine->subdev.device, 264 * 4,
				  align, true, parent, pgpuobj);
	if (ret == 0) {
		chan->inst = (*pgpuobj)->addr;
		FUNC3(*pgpuobj);
		FUNC4(*pgpuobj, 0x78, 0x02001ec1);
		FUNC1(*pgpuobj);
	}
	return ret;
}