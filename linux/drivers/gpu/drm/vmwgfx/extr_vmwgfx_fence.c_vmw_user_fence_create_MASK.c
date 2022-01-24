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
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_fence_obj {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
struct vmw_user_fence {struct vmw_fence_obj fence; TYPE_2__ base; } ;
struct vmw_fence_manager {int /*<<< orphan*/  user_fence_size; int /*<<< orphan*/  dev_priv; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct ttm_object_file {int dummy; } ;
struct ttm_mem_global {int dummy; } ;
struct drm_file {int dummy; } ;
struct TYPE_3__ {struct ttm_object_file* tfile; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VMW_RES_FENCE ; 
 int /*<<< orphan*/  FUNC0 (struct vmw_user_fence*) ; 
 struct vmw_user_fence* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ttm_object_file*,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ttm_mem_global*,int /*<<< orphan*/ ,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_mem_global*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct vmw_fence_manager*,struct vmw_fence_obj*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmw_fence_obj* FUNC7 (struct vmw_fence_obj*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_fence_obj**) ; 
 TYPE_1__* FUNC9 (struct drm_file*) ; 
 struct ttm_mem_global* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmw_user_fence_base_release ; 
 int /*<<< orphan*/  vmw_user_fence_destroy ; 

int FUNC11(struct drm_file *file_priv,
			  struct vmw_fence_manager *fman,
			  uint32_t seqno,
			  struct vmw_fence_obj **p_fence,
			  uint32_t *p_handle)
{
	struct ttm_object_file *tfile = FUNC9(file_priv)->tfile;
	struct vmw_user_fence *ufence;
	struct vmw_fence_obj *tmp;
	struct ttm_mem_global *mem_glob = FUNC10(fman->dev_priv);
	struct ttm_operation_ctx ctx = {
		.interruptible = false,
		.no_wait_gpu = false
	};
	int ret;

	/*
	 * Kernel memory space accounting, since this object may
	 * be created by a user-space request.
	 */

	ret = FUNC3(mem_glob, fman->user_fence_size,
				   &ctx);
	if (FUNC5(ret != 0))
		return ret;

	ufence = FUNC1(sizeof(*ufence), GFP_KERNEL);
	if (FUNC5(!ufence)) {
		ret = -ENOMEM;
		goto out_no_object;
	}

	ret = FUNC6(fman, &ufence->fence, seqno,
				 vmw_user_fence_destroy);
	if (FUNC5(ret != 0)) {
		FUNC0(ufence);
		goto out_no_object;
	}

	/*
	 * The base object holds a reference which is freed in
	 * vmw_user_fence_base_release.
	 */
	tmp = FUNC7(&ufence->fence);
	ret = FUNC2(tfile, &ufence->base, false,
				   VMW_RES_FENCE,
				   &vmw_user_fence_base_release, NULL);


	if (FUNC5(ret != 0)) {
		/*
		 * Free the base object's reference
		 */
		FUNC8(&tmp);
		goto out_err;
	}

	*p_fence = &ufence->fence;
	*p_handle = ufence->base.handle;

	return 0;
out_err:
	tmp = &ufence->fence;
	FUNC8(&tmp);
out_no_object:
	FUNC4(mem_glob, fman->user_fence_size);
	return ret;
}