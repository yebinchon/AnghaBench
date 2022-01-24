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
struct ttm_mem_reg {int /*<<< orphan*/  num_pages; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {TYPE_1__* vma; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  NvSubCopy ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC3 (struct nouveau_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct nouveau_mem* FUNC5 (struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct nouveau_channel *chan, struct ttm_buffer_object *bo,
		  struct ttm_mem_reg *old_reg, struct ttm_mem_reg *new_reg)
{
	struct nouveau_mem *mem = FUNC5(old_reg);
	int ret = FUNC3(chan, 10);
	if (ret == 0) {
		FUNC1(chan, NvSubCopy, 0x0400, 8);
		FUNC2  (chan, FUNC6(mem->vma[0].addr));
		FUNC2  (chan, FUNC4(mem->vma[0].addr));
		FUNC2  (chan, FUNC6(mem->vma[1].addr));
		FUNC2  (chan, FUNC4(mem->vma[1].addr));
		FUNC2  (chan, PAGE_SIZE);
		FUNC2  (chan, PAGE_SIZE);
		FUNC2  (chan, PAGE_SIZE);
		FUNC2  (chan, new_reg->num_pages);
		FUNC0(chan, NvSubCopy, 0x0300, 0x0386);
	}
	return ret;
}