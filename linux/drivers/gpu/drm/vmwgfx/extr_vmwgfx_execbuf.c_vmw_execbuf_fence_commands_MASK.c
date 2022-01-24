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
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_private {int /*<<< orphan*/  fman; } ;
struct vmw_fence_obj {int dummy; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  VMW_FENCE_WAIT_TIMEOUT ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmw_fence_obj**) ; 
 int FUNC5 (struct vmw_private*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct drm_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmw_fence_obj**,int /*<<< orphan*/ *) ; 

int FUNC7(struct drm_file *file_priv,
			       struct vmw_private *dev_priv,
			       struct vmw_fence_obj **p_fence,
			       uint32_t *p_handle)
{
	uint32_t sequence;
	int ret;
	bool synced = false;

	/* p_handle implies file_priv. */
	FUNC0(p_handle != NULL && file_priv == NULL);

	ret = FUNC5(dev_priv, &sequence);
	if (FUNC2(ret != 0)) {
		FUNC1("Fence submission error. Syncing.\n");
		synced = true;
	}

	if (p_handle != NULL)
		ret = FUNC6(file_priv, dev_priv->fman,
					    sequence, p_fence, p_handle);
	else
		ret = FUNC4(dev_priv->fman, sequence, p_fence);

	if (FUNC2(ret != 0 && !synced)) {
		(void) FUNC3(dev_priv, false, false, sequence,
					 false, VMW_FENCE_WAIT_TIMEOUT);
		*p_fence = NULL;
	}

	return ret;
}