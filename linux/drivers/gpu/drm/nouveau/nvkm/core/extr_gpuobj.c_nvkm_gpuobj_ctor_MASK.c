#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct nvkm_gpuobj {scalar_t__ size; int /*<<< orphan*/  heap; int /*<<< orphan*/  memory; scalar_t__ addr; int /*<<< orphan*/ * func; TYPE_1__* node; struct nvkm_gpuobj* parent; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ length; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_MEM_TARGET_INST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  nvkm_gpuobj_func ; 
 int /*<<< orphan*/  nvkm_gpuobj_heap ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_gpuobj*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nvkm_device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_gpuobj*,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC11(struct nvkm_device *device, u32 size, int align, bool zero,
		 struct nvkm_gpuobj *parent, struct nvkm_gpuobj *gpuobj)
{
	u32 offset;
	int ret;

	if (parent) {
		if (align >= 0) {
			ret = FUNC7(&parent->heap, 0, 1, size, size,
					   FUNC1(align, 1), &gpuobj->node);
		} else {
			ret = FUNC9(&parent->heap, 0, 1, size, size,
					   -align, &gpuobj->node);
		}
		if (ret)
			return ret;

		gpuobj->parent = parent;
		gpuobj->func = &nvkm_gpuobj_func;
		gpuobj->addr = parent->addr + gpuobj->node->offset;
		gpuobj->size = gpuobj->node->length;

		if (zero) {
			FUNC3(gpuobj);
			for (offset = 0; offset < gpuobj->size; offset += 4)
				FUNC10(gpuobj, offset, 0x00000000);
			FUNC2(gpuobj);
		}
	} else {
		ret = FUNC5(device, NVKM_MEM_TARGET_INST, size,
				      FUNC0(align), zero, &gpuobj->memory);
		if (ret)
			return ret;

		gpuobj->func = &nvkm_gpuobj_heap;
		gpuobj->addr = FUNC4(gpuobj->memory);
		gpuobj->size = FUNC6(gpuobj->memory);
	}

	return FUNC8(&gpuobj->heap, 0, 0, gpuobj->size, 1);
}