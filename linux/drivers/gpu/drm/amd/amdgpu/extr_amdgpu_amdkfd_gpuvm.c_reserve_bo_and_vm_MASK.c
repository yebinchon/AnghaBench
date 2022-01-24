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
struct kgd_mem {int /*<<< orphan*/  sync; struct amdgpu_bo* bo; } ;
struct TYPE_3__ {int num_shared; int /*<<< orphan*/  head; int /*<<< orphan*/ * bo; } ;
struct TYPE_4__ {TYPE_1__ tv; scalar_t__ priority; } ;
struct bo_vm_reservation_context {int reserved; int n_vms; int /*<<< orphan*/ * vm_pd; int /*<<< orphan*/  duplicates; int /*<<< orphan*/  list; int /*<<< orphan*/  ticket; TYPE_2__ kfd_bo; int /*<<< orphan*/ * sync; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_bo {int /*<<< orphan*/  tbo; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_vm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct kgd_mem *mem,
			      struct amdgpu_vm *vm,
			      struct bo_vm_reservation_context *ctx)
{
	struct amdgpu_bo *bo = mem->bo;
	int ret;

	FUNC1(!vm);

	ctx->reserved = false;
	ctx->n_vms = 1;
	ctx->sync = &mem->sync;

	FUNC0(&ctx->list);
	FUNC0(&ctx->duplicates);

	ctx->vm_pd = FUNC3(ctx->n_vms, sizeof(*ctx->vm_pd), GFP_KERNEL);
	if (!ctx->vm_pd)
		return -ENOMEM;

	ctx->kfd_bo.priority = 0;
	ctx->kfd_bo.tv.bo = &bo->tbo;
	ctx->kfd_bo.tv.num_shared = 1;
	FUNC5(&ctx->kfd_bo.tv.head, &ctx->list);

	FUNC2(vm, &ctx->list, &ctx->vm_pd[0]);

	ret = FUNC7(&ctx->ticket, &ctx->list,
				     false, &ctx->duplicates, true);
	if (!ret)
		ctx->reserved = true;
	else {
		FUNC6("Failed to reserve buffers in ttm\n");
		FUNC4(ctx->vm_pd);
		ctx->vm_pd = NULL;
	}

	return ret;
}