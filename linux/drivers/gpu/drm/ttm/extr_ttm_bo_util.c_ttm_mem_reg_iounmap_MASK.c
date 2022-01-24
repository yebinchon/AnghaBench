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
struct TYPE_2__ {int /*<<< orphan*/ * addr; } ;
struct ttm_mem_reg {size_t mem_type; TYPE_1__ bus; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_bo_device*,struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_mem_type_manager*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_mem_type_manager*) ; 

__attribute__((used)) static void FUNC4(struct ttm_bo_device *bdev, struct ttm_mem_reg *mem,
			 void *virtual)
{
	struct ttm_mem_type_manager *man;

	man = &bdev->man[mem->mem_type];

	if (virtual && mem->bus.addr == NULL)
		FUNC0(virtual);
	(void) FUNC2(man, false);
	FUNC1(bdev, mem);
	FUNC3(man);
}