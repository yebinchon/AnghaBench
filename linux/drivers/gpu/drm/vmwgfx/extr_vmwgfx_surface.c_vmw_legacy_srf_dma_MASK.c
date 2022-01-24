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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_surface {int dummy; } ;
struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;
struct vmw_fence_obj {int dummy; } ;
struct ttm_validate_buffer {int /*<<< orphan*/  bo; } ;
typedef  int /*<<< orphan*/  SVGAGuestPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vmw_fence_obj*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct vmw_private*,struct vmw_fence_obj**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_fence_obj**) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 struct vmw_surface* FUNC9 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmw_surface*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vmw_surface*) ; 

__attribute__((used)) static int FUNC12(struct vmw_resource *res,
			      struct ttm_validate_buffer *val_buf,
			      bool bind)
{
	SVGAGuestPtr ptr;
	struct vmw_fence_obj *fence;
	uint32_t submit_size;
	struct vmw_surface *srf = FUNC9(res);
	uint8_t *cmd;
	struct vmw_private *dev_priv = res->dev_priv;

	FUNC0(!val_buf->bo);
	submit_size = FUNC11(srf);
	cmd = FUNC1(dev_priv, submit_size);
	if (FUNC3(!cmd))
		return -ENOMEM;

	FUNC5(val_buf->bo, &ptr);
	FUNC10(srf, cmd, &ptr, bind);

	FUNC8(dev_priv, submit_size);

	/*
	 * Create a fence object and fence the backup buffer.
	 */

	(void) FUNC6(NULL, dev_priv,
					  &fence, NULL);

	FUNC4(val_buf->bo, fence);

	if (FUNC2(fence != NULL))
		FUNC7(&fence);

	return 0;
}