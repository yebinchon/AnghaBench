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
struct vmw_private {int query_cid_valid; int dummy_query_bo_pinned; int /*<<< orphan*/ * pinned_bo; int /*<<< orphan*/ * dummy_query_bo; int /*<<< orphan*/  query_cid; } ;
struct vmw_fence_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  val_ctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vmw_private*,struct vmw_fence_obj**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_fence_obj**) ; 
 int FUNC7 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct vmw_fence_obj*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct vmw_private *dev_priv,
				     struct vmw_fence_obj *fence)
{
	int ret = 0;
	struct vmw_fence_obj *lfence = NULL;
	FUNC1(val_ctx, NULL, 0);

	if (dev_priv->pinned_bo == NULL)
		goto out_unlock;

	ret = FUNC8(&val_ctx, dev_priv->pinned_bo, false,
				    false);
	if (ret)
		goto out_no_reserve;

	ret = FUNC8(&val_ctx, dev_priv->dummy_query_bo, false,
				    false);
	if (ret)
		goto out_no_reserve;

	ret = FUNC11(&val_ctx, false);
	if (ret)
		goto out_no_reserve;

	if (dev_priv->query_cid_valid) {
		FUNC0(fence != NULL);
		ret = FUNC7(dev_priv, dev_priv->query_cid);
		if (ret)
			goto out_no_emit;
		dev_priv->query_cid_valid = false;
	}

	FUNC2(dev_priv->pinned_bo, false);
	if (dev_priv->dummy_query_bo_pinned) {
		FUNC2(dev_priv->dummy_query_bo, false);
		dev_priv->dummy_query_bo_pinned = false;
	}
	if (fence == NULL) {
		(void) FUNC4(NULL, dev_priv, &lfence,
						  NULL);
		fence = lfence;
	}
	FUNC10(&val_ctx, fence);
	if (lfence != NULL)
		FUNC6(&lfence);

	FUNC12(&val_ctx);
	FUNC3(&dev_priv->pinned_bo);

out_unlock:
	return;
out_no_emit:
	FUNC9(&val_ctx);
out_no_reserve:
	FUNC12(&val_ctx);
	FUNC5(dev_priv);
	FUNC3(&dev_priv->pinned_bo);
}