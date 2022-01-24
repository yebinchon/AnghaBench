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
struct ttm_tt {int dummy; } ;
struct ttm_mem_reg {int dummy; } ;
struct nouveau_sgdma_be {struct nouveau_mem* mem; int /*<<< orphan*/  ttm; } ;
struct nouveau_mem {int dummy; } ;

/* Variables and functions */
 struct nouveau_mem* FUNC0 (struct ttm_mem_reg*) ; 
 int FUNC1 (struct ttm_mem_reg*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct ttm_tt *ttm, struct ttm_mem_reg *reg)
{
	struct nouveau_sgdma_be *nvbe = (struct nouveau_sgdma_be *)ttm;
	struct nouveau_mem *mem = FUNC0(reg);
	int ret;

	ret = FUNC1(reg, &nvbe->ttm);
	if (ret)
		return ret;

	nvbe->mem = mem;
	return 0;
}