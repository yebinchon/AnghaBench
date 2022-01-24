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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct nvif_mmu {int /*<<< orphan*/  mem; } ;
struct nvif_mem {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int NVIF_MEM_MAPPABLE ; 
 int /*<<< orphan*/  FUNC0 (struct nvif_mem*) ; 
 int FUNC1 (struct nvif_mmu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nvif_mem*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(struct nvif_mmu *mmu, u8 type, u64 size, struct nvif_mem *mem)
{
	int ret = FUNC1(mmu, mmu->mem, NVIF_MEM_MAPPABLE | type, 0,
				size, NULL, 0, mem);
	if (ret == 0) {
		ret = FUNC2(&mem->object, NULL, 0);
		if (ret)
			FUNC0(mem);
	}
	return ret;
}