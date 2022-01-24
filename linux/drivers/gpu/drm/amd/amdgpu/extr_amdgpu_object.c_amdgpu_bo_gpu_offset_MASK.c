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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {scalar_t__ mem_type; scalar_t__ start; } ;
struct TYPE_6__ {int /*<<< orphan*/  resv; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  offset; TYPE_1__ mem; TYPE_3__ base; } ;
struct amdgpu_bo {int flags; TYPE_2__ tbo; int /*<<< orphan*/  pin_count; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_BO_INVALID_OFFSET ; 
 int AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS ; 
 scalar_t__ TTM_PL_SYSTEM ; 
 scalar_t__ TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ttm_bo_type_kernel ; 

u64 FUNC3(struct amdgpu_bo *bo)
{
	FUNC0(bo->tbo.mem.mem_type == TTM_PL_SYSTEM);
	FUNC0(!FUNC2(bo->tbo.base.resv) &&
		     !bo->pin_count && bo->tbo.type != ttm_bo_type_kernel);
	FUNC0(bo->tbo.mem.start == AMDGPU_BO_INVALID_OFFSET);
	FUNC0(bo->tbo.mem.mem_type == TTM_PL_VRAM &&
		     !(bo->flags & AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS));

	return FUNC1(bo->tbo.offset);
}