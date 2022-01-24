#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ mem_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  resv; } ;
struct TYPE_6__ {TYPE_2__ mem; TYPE_1__ base; } ;
struct radeon_bo {int tiling_flags; scalar_t__ surface_reg; TYPE_3__ tbo; } ;

/* Variables and functions */
 int RADEON_TILING_SURFACE ; 
 scalar_t__ TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_bo*) ; 
 int FUNC2 (struct radeon_bo*) ; 

int FUNC3(struct radeon_bo *bo, bool has_moved,
				bool force_drop)
{
	if (!force_drop)
		FUNC0(bo->tbo.base.resv);

	if (!(bo->tiling_flags & RADEON_TILING_SURFACE))
		return 0;

	if (force_drop) {
		FUNC1(bo);
		return 0;
	}

	if (bo->tbo.mem.mem_type != TTM_PL_VRAM) {
		if (!has_moved)
			return 0;

		if (bo->surface_reg >= 0)
			FUNC1(bo);
		return 0;
	}

	if ((bo->surface_reg >= 0) && !has_moved)
		return 0;

	return FUNC2(bo);
}