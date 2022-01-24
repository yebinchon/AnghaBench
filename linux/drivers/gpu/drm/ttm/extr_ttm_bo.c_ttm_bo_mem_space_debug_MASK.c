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
struct ttm_placement {int num_placement; TYPE_2__* placement; } ;
struct TYPE_3__ {int size; int /*<<< orphan*/  num_pages; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; TYPE_1__ mem; } ;
struct drm_printer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_PFX ; 
 struct drm_printer FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_printer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct drm_printer*,int) ; 
 int FUNC3 (TYPE_2__*,int*) ; 

__attribute__((used)) static void FUNC4(struct ttm_buffer_object *bo,
					struct ttm_placement *placement)
{
	struct drm_printer p = FUNC0(TTM_PFX);
	int i, ret, mem_type;

	FUNC1(&p, "No space for %p (%lu pages, %luK, %luM)\n",
		   bo, bo->mem.num_pages, bo->mem.size >> 10,
		   bo->mem.size >> 20);
	for (i = 0; i < placement->num_placement; i++) {
		ret = FUNC3(&placement->placement[i],
						&mem_type);
		if (ret)
			return;
		FUNC1(&p, "  placement[%d]=0x%08X (%d)\n",
			   i, placement->placement[i].flags, mem_type);
		FUNC2(bo->bdev, &p, mem_type);
	}
}