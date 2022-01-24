#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  struct drm_gem_cma_object* uint32_t ;
struct vc4_exec_info {int bo_count; struct drm_gem_cma_object** bo; struct drm_vc4_submit_cl* args; } ;
struct drm_vc4_submit_cl {int bo_handle_count; int /*<<< orphan*/  bo_handles; } ;
struct drm_gem_object {int dummy; } ;
struct drm_gem_cma_object {int /*<<< orphan*/  base; } ;
struct drm_file {int /*<<< orphan*/  table_lock; int /*<<< orphan*/  object_idr; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC2 (struct drm_gem_cma_object**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_gem_object* FUNC5 (int /*<<< orphan*/ *,struct drm_gem_cma_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_cma_object**) ; 
 void* FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct drm_device *dev,
		  struct drm_file *file_priv,
		  struct vc4_exec_info *exec)
{
	struct drm_vc4_submit_cl *args = exec->args;
	uint32_t *handles;
	int ret = 0;
	int i;

	exec->bo_count = args->bo_handle_count;

	if (!exec->bo_count) {
		/* See comment on bo_index for why we have to check
		 * this.
		 */
		FUNC0("Rendering requires BOs to validate\n");
		return -EINVAL;
	}

	exec->bo = FUNC7(exec->bo_count,
				    sizeof(struct drm_gem_cma_object *),
				    GFP_KERNEL | __GFP_ZERO);
	if (!exec->bo) {
		FUNC1("Failed to allocate validated BO pointers\n");
		return -ENOMEM;
	}

	handles = FUNC7(exec->bo_count, sizeof(uint32_t), GFP_KERNEL);
	if (!handles) {
		ret = -ENOMEM;
		FUNC1("Failed to allocate incoming GEM handles\n");
		goto fail;
	}

	if (FUNC2(handles, FUNC11(args->bo_handles),
			   exec->bo_count * sizeof(uint32_t))) {
		ret = -EFAULT;
		FUNC1("Failed to copy in GEM handles\n");
		goto fail;
	}

	FUNC8(&file_priv->table_lock);
	for (i = 0; i < exec->bo_count; i++) {
		struct drm_gem_object *bo = FUNC5(&file_priv->object_idr,
						     handles[i]);
		if (!bo) {
			FUNC0("Failed to look up GEM BO %d: %d\n",
				  i, handles[i]);
			ret = -EINVAL;
			break;
		}

		FUNC3(bo);
		exec->bo[i] = (struct drm_gem_cma_object *)bo;
	}
	FUNC9(&file_priv->table_lock);

	if (ret)
		goto fail_put_bo;

	for (i = 0; i < exec->bo_count; i++) {
		ret = FUNC13(FUNC10(&exec->bo[i]->base));
		if (ret)
			goto fail_dec_usecnt;
	}

	FUNC6(handles);
	return 0;

fail_dec_usecnt:
	/* Decrease usecnt on acquired objects.
	 * We cannot rely on  vc4_complete_exec() to release resources here,
	 * because vc4_complete_exec() has no information about which BO has
	 * had its ->usecnt incremented.
	 * To make things easier we just free everything explicitly and set
	 * exec->bo to NULL so that vc4_complete_exec() skips the 'BO release'
	 * step.
	 */
	for (i-- ; i >= 0; i--)
		FUNC12(FUNC10(&exec->bo[i]->base));

fail_put_bo:
	/* Release any reference to acquired objects. */
	for (i = 0; i < exec->bo_count && exec->bo[i]; i++)
		FUNC4(&exec->bo[i]->base);

fail:
	FUNC6(handles);
	FUNC6(exec->bo);
	exec->bo = NULL;
	return ret;
}