#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vmw_resource {int /*<<< orphan*/  id; struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  start; } ;
struct TYPE_11__ {TYPE_3__ mem; } ;
struct vmw_buffer_object {TYPE_4__ base; scalar_t__ dx_query_ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  mobid; int /*<<< orphan*/  cid; } ;
struct TYPE_8__ {int size; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {TYPE_2__ body; TYPE_1__ header; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SVGA3dCmdDXBindAllQuery ; 
 int /*<<< orphan*/  SVGA_3D_CMD_DX_BIND_ALL_QUERY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (struct vmw_private*,int,int /*<<< orphan*/ ) ; 
 TYPE_5__* cmd ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_resource*,struct vmw_buffer_object*) ; 
 struct vmw_buffer_object* FUNC3 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*,int) ; 

__attribute__((used)) static int FUNC5(struct vmw_resource *ctx_res)
{
	struct vmw_private *dev_priv = ctx_res->dev_priv;
	struct vmw_buffer_object *dx_query_mob;
	FUNC0(*cmd, SVGA3dCmdDXBindAllQuery);

	dx_query_mob = FUNC3(ctx_res);

	if (!dx_query_mob || dx_query_mob->dx_query_ctx)
		return 0;

	cmd = FUNC1(dev_priv, sizeof(*cmd), ctx_res->id);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.id = SVGA_3D_CMD_DX_BIND_ALL_QUERY;
	cmd->header.size = sizeof(cmd->body);
	cmd->body.cid = ctx_res->id;
	cmd->body.mobid = dx_query_mob->base.mem.start;
	FUNC4(dev_priv, sizeof(*cmd));

	FUNC2(ctx_res, dx_query_mob);

	return 0;
}