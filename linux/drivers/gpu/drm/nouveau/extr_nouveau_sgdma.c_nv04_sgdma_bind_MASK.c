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
struct ttm_tt {int dummy; } ;
struct ttm_mem_reg {int dummy; } ;
struct nouveau_sgdma_be {struct nouveau_mem* mem; int /*<<< orphan*/  ttm; } ;
struct nouveau_mem {int /*<<< orphan*/ * vma; TYPE_1__* cli; } ;
struct TYPE_4__ {int /*<<< orphan*/  vmm; } ;
struct TYPE_3__ {TYPE_2__ vmm; } ;

/* Variables and functions */
 struct nouveau_mem* FUNC0 (struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_mem*) ; 
 int FUNC2 (struct ttm_mem_reg*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nouveau_mem*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct ttm_tt *ttm, struct ttm_mem_reg *reg)
{
	struct nouveau_sgdma_be *nvbe = (struct nouveau_sgdma_be *)ttm;
	struct nouveau_mem *mem = FUNC0(reg);
	int ret;

	ret = FUNC2(reg, &nvbe->ttm);
	if (ret)
		return ret;

	ret = FUNC3(mem, &mem->cli->vmm.vmm, &mem->vma[0]);
	if (ret) {
		FUNC1(mem);
		return ret;
	}

	nvbe->mem = mem;
	return 0;
}