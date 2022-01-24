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
struct nvkm_memory {int dummy; } ;
struct nvkm_gpuobj {int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_gpuobj* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_memory*) ; 

int
FUNC3(struct nvkm_memory *memory, struct nvkm_gpuobj **pgpuobj)
{
	if (!(*pgpuobj = FUNC0(sizeof(**pgpuobj), GFP_KERNEL)))
		return -ENOMEM;

	(*pgpuobj)->addr = FUNC1(memory);
	(*pgpuobj)->size = FUNC2(memory);
	return 0;
}