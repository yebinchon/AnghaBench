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
struct nvkm_gpuobj {void* map; int /*<<< orphan*/ * func; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  nvkm_gpuobj_heap_fast ; 
 int /*<<< orphan*/  nvkm_gpuobj_heap_slow ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC2(struct nvkm_gpuobj *gpuobj)
{
	gpuobj->map = FUNC1(gpuobj->memory);
	if (FUNC0(gpuobj->map))
		gpuobj->func = &nvkm_gpuobj_heap_fast;
	else
		gpuobj->func = &nvkm_gpuobj_heap_slow;
	return gpuobj->map;
}