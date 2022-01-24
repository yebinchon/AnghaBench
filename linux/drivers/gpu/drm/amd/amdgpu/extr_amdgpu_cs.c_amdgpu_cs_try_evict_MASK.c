#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ttm_operation_ctx {int member_0; int member_1; scalar_t__ bytes_moved; } ;
struct amdgpu_device {int /*<<< orphan*/  gmc; } ;
struct amdgpu_cs_parser {int /*<<< orphan*/  validated; struct amdgpu_bo_list_entry* evictable; int /*<<< orphan*/  bytes_moved_vis; int /*<<< orphan*/  bytes_moved; } ;
struct TYPE_6__ {int /*<<< orphan*/  head; int /*<<< orphan*/  bo; } ;
struct amdgpu_bo_list_entry {TYPE_2__ tv; } ;
struct TYPE_5__ {int /*<<< orphan*/  mem_type; } ;
struct TYPE_8__ {TYPE_1__ mem; int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {int allowed_domains; int /*<<< orphan*/  placement; TYPE_4__ tbo; scalar_t__ pin_count; } ;
struct TYPE_7__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct amdgpu_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct amdgpu_bo_list_entry*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 struct amdgpu_bo* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__ tv ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static bool FUNC10(struct amdgpu_cs_parser *p,
				struct amdgpu_bo *validated)
{
	uint32_t domain = validated->allowed_domains;
	struct ttm_operation_ctx ctx = { true, false };
	int r;

	if (!p->evictable)
		return false;

	for (;&p->evictable->tv.head != &p->validated;
	     p->evictable = FUNC6(p->evictable, tv.head)) {

		struct amdgpu_bo_list_entry *candidate = p->evictable;
		struct amdgpu_bo *bo = FUNC8(candidate->tv.bo);
		struct amdgpu_device *adev = FUNC4(bo->tbo.bdev);
		bool update_bytes_moved_vis;
		uint32_t other;

		/* If we reached our current BO we can forget it */
		if (bo == validated)
			break;

		/* We can't move pinned BOs here */
		if (bo->pin_count)
			continue;

		other = FUNC3(bo->tbo.mem.mem_type);

		/* Check if this BO is in one of the domains we need space for */
		if (!(other & domain))
			continue;

		/* Check if we can move this BO somewhere else */
		other = bo->allowed_domains & ~domain;
		if (!other)
			continue;

		/* Good we can try to move this BO somewhere else */
		update_bytes_moved_vis =
				!FUNC2(&adev->gmc) &&
				FUNC0(bo);
		FUNC1(bo, other);
		r = FUNC7(&bo->tbo, &bo->placement, &ctx);
		p->bytes_moved += ctx.bytes_moved;
		if (update_bytes_moved_vis)
			p->bytes_moved_vis += ctx.bytes_moved;

		if (FUNC9(r))
			break;

		p->evictable = FUNC6(p->evictable, tv.head);
		FUNC5(&candidate->tv.head, &p->validated);

		return true;
	}

	return false;
}