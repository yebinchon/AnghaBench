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
typedef  int /*<<< orphan*/  u32 ;
struct lima_device {scalar_t__ pipe; } ;
struct lima_ctx_mgr {int /*<<< orphan*/  handles; } ;
struct lima_ctx {scalar_t__ context; int /*<<< orphan*/  guilty; int /*<<< orphan*/  refcnt; struct lima_device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct lima_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct lima_ctx* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int lima_pipe_num ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct lima_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xa_limit_32b ; 

int FUNC6(struct lima_device *dev, struct lima_ctx_mgr *mgr, u32 *id)
{
	struct lima_ctx *ctx;
	int i, err;

	ctx = FUNC2(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;
	ctx->dev = dev;
	FUNC1(&ctx->refcnt);

	for (i = 0; i < lima_pipe_num; i++) {
		err = FUNC4(dev->pipe + i, ctx->context + i, &ctx->guilty);
		if (err)
			goto err_out0;
	}

	err = FUNC5(&mgr->handles, id, ctx, xa_limit_32b, GFP_KERNEL);
	if (err < 0)
		goto err_out0;

	return 0;

err_out0:
	for (i--; i >= 0; i--)
		FUNC3(dev->pipe + i, ctx->context + i);
	FUNC0(ctx);
	return err;
}