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
struct nvkm_gpuobj {int /*<<< orphan*/  memory; int /*<<< orphan*/  heap; int /*<<< orphan*/  node; TYPE_1__* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  heap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(struct nvkm_gpuobj **pgpuobj)
{
	struct nvkm_gpuobj *gpuobj = *pgpuobj;
	if (gpuobj) {
		if (gpuobj->parent)
			FUNC3(&gpuobj->parent->heap, &gpuobj->node);
		FUNC2(&gpuobj->heap);
		FUNC1(&gpuobj->memory);
		FUNC0(*pgpuobj);
		*pgpuobj = NULL;
	}
}