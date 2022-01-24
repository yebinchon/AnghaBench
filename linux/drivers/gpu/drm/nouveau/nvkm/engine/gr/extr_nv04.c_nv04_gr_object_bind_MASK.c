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
struct nvkm_object {int oclass; TYPE_2__* engine; } ;
struct nvkm_gpuobj {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_gpuobj*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_gpuobj*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_gpuobj*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nvkm_object *object, struct nvkm_gpuobj *parent,
		    int align, struct nvkm_gpuobj **pgpuobj)
{
	int ret = FUNC1(object->engine->subdev.device, 16, align,
				  false, parent, pgpuobj);
	if (ret == 0) {
		FUNC2(*pgpuobj);
		FUNC4(*pgpuobj, 0x00, object->oclass);
#ifdef __BIG_ENDIAN
		nvkm_mo32(*pgpuobj, 0x00, 0x00080000, 0x00080000);
#endif
		FUNC4(*pgpuobj, 0x04, 0x00000000);
		FUNC4(*pgpuobj, 0x08, 0x00000000);
		FUNC4(*pgpuobj, 0x0c, 0x00000000);
		FUNC0(*pgpuobj);
	}
	return ret;
}