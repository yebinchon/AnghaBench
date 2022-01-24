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
struct nvkm_object {TYPE_2__* engine; } ;
struct nvkm_gpuobj {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ; 

__attribute__((used)) static int
FUNC1(struct nvkm_object *object, struct nvkm_gpuobj *parent,
			int align, struct nvkm_gpuobj **pgpuobj)
{
	return FUNC0(object->engine->subdev.device, 0x10000, align,
			       true, parent, pgpuobj);
}