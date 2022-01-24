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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct vmw_resource {int /*<<< orphan*/  id; struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;
struct vmw_fence_obj {int dummy; } ;
struct ttm_validate_buffer {struct ttm_buffer_object* bo; } ;
struct TYPE_6__ {scalar_t__ mem_type; } ;
struct ttm_buffer_object {TYPE_1__ mem; } ;
struct TYPE_8__ {int size; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {int /*<<< orphan*/  mobid; int /*<<< orphan*/  sid; } ;
typedef  TYPE_2__ SVGA3dCmdReadbackGBSurface ;
typedef  TYPE_2__ SVGA3dCmdInvalidateGBSurface ;
typedef  TYPE_4__ SVGA3dCmdHeader ;
typedef  TYPE_2__ SVGA3dCmdBindGBSurface ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SVGA3D_INVALID_ID ; 
 int /*<<< orphan*/  SVGA_3D_CMD_BIND_GB_SURFACE ; 
 int /*<<< orphan*/  SVGA_3D_CMD_INVALIDATE_GB_SURFACE ; 
 int /*<<< orphan*/  SVGA_3D_CMD_READBACK_GB_SURFACE ; 
 int /*<<< orphan*/ * FUNC1 (struct vmw_private*,int) ; 
 scalar_t__ VMW_PL_MOB ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_buffer_object*,struct vmw_fence_obj*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vmw_private*,struct vmw_fence_obj**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_fence_obj**) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_private*,int) ; 

__attribute__((used)) static int FUNC8(struct vmw_resource *res,
				 bool readback,
				 struct ttm_validate_buffer *val_buf)
{
	struct vmw_private *dev_priv = res->dev_priv;
	struct ttm_buffer_object *bo = val_buf->bo;
	struct vmw_fence_obj *fence;

	struct {
		SVGA3dCmdHeader header;
		SVGA3dCmdReadbackGBSurface body;
	} *cmd1;
	struct {
		SVGA3dCmdHeader header;
		SVGA3dCmdInvalidateGBSurface body;
	} *cmd2;
	struct {
		SVGA3dCmdHeader header;
		SVGA3dCmdBindGBSurface body;
	} *cmd3;
	uint32_t submit_size;
	uint8_t *cmd;


	FUNC0(bo->mem.mem_type != VMW_PL_MOB);

	submit_size = sizeof(*cmd3) + (readback ? sizeof(*cmd1) : sizeof(*cmd2));
	cmd = FUNC1(dev_priv, submit_size);
	if (FUNC3(!cmd))
		return -ENOMEM;

	if (readback) {
		cmd1 = (void *) cmd;
		cmd1->header.id = SVGA_3D_CMD_READBACK_GB_SURFACE;
		cmd1->header.size = sizeof(cmd1->body);
		cmd1->body.sid = res->id;
		cmd3 = (void *) &cmd1[1];
	} else {
		cmd2 = (void *) cmd;
		cmd2->header.id = SVGA_3D_CMD_INVALIDATE_GB_SURFACE;
		cmd2->header.size = sizeof(cmd2->body);
		cmd2->body.sid = res->id;
		cmd3 = (void *) &cmd2[1];
	}

	cmd3->header.id = SVGA_3D_CMD_BIND_GB_SURFACE;
	cmd3->header.size = sizeof(cmd3->body);
	cmd3->body.sid = res->id;
	cmd3->body.mobid = SVGA3D_INVALID_ID;

	FUNC7(dev_priv, submit_size);

	/*
	 * Create a fence object and fence the backup buffer.
	 */

	(void) FUNC5(NULL, dev_priv,
					  &fence, NULL);

	FUNC4(val_buf->bo, fence);

	if (FUNC2(fence != NULL))
		FUNC6(&fence);

	return 0;
}