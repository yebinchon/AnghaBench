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
struct ww_acquire_ctx {int dummy; } ;
struct amdgpu_vm {int /*<<< orphan*/  va; } ;
struct amdgpu_bo_va_mapping {TYPE_4__* bo_va; } ;
struct TYPE_5__ {int /*<<< orphan*/  resv; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;
struct TYPE_7__ {struct amdgpu_bo* bo; } ;
struct TYPE_8__ {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  U64_MAX ; 
 struct amdgpu_bo_va_mapping* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_bo_va_mapping* FUNC1 (struct amdgpu_bo_va_mapping*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ww_acquire_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo_va_mapping*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct amdgpu_vm *vm, struct ww_acquire_ctx *ticket)
{
	struct amdgpu_bo_va_mapping *mapping;

	if (!FUNC4())
		return;

	for (mapping = FUNC0(&vm->va, 0, U64_MAX); mapping;
	     mapping = FUNC1(mapping, 0, U64_MAX)) {
		if (mapping->bo_va && mapping->bo_va->base.bo) {
			struct amdgpu_bo *bo;

			bo = mapping->bo_va->base.bo;
			if (FUNC2(bo->tbo.base.resv) !=
			    ticket)
				continue;
		}

		FUNC3(mapping);
	}
}