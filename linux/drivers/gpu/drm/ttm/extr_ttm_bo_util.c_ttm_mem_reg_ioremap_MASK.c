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
struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; scalar_t__ offset; scalar_t__ base; void* addr; int /*<<< orphan*/  is_iomem; } ;
struct ttm_mem_reg {size_t mem_type; int placement; TYPE_1__ bus; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;

/* Variables and functions */
 int ENOMEM ; 
 int TTM_PL_FLAG_WC ; 
 void* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_bo_device*,struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_mem_type_manager*,int) ; 
 int FUNC4 (struct ttm_bo_device*,struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_mem_type_manager*) ; 

__attribute__((used)) static int FUNC6(struct ttm_bo_device *bdev, struct ttm_mem_reg *mem,
			void **virtual)
{
	struct ttm_mem_type_manager *man = &bdev->man[mem->mem_type];
	int ret;
	void *addr;

	*virtual = NULL;
	(void) FUNC3(man, false);
	ret = FUNC4(bdev, mem);
	FUNC5(man);
	if (ret || !mem->bus.is_iomem)
		return ret;

	if (mem->bus.addr) {
		addr = mem->bus.addr;
	} else {
		if (mem->placement & TTM_PL_FLAG_WC)
			addr = FUNC1(mem->bus.base + mem->bus.offset, mem->bus.size);
		else
			addr = FUNC0(mem->bus.base + mem->bus.offset, mem->bus.size);
		if (!addr) {
			(void) FUNC3(man, false);
			FUNC2(bdev, mem);
			FUNC5(man);
			return -ENOMEM;
		}
	}
	*virtual = addr;
	return 0;
}