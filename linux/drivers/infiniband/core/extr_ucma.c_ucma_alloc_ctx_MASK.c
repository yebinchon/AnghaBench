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
struct ucma_file {int /*<<< orphan*/  ctx_list; } ;
struct ucma_context {int /*<<< orphan*/  list; int /*<<< orphan*/  id; struct ucma_file* file; int /*<<< orphan*/  mc_list; int /*<<< orphan*/  comp; int /*<<< orphan*/  ref; int /*<<< orphan*/  close_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ctx_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ucma_context*) ; 
 struct ucma_context* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ucma_close_id ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ucma_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xa_limit_32b ; 

__attribute__((used)) static struct ucma_context *FUNC8(struct ucma_file *file)
{
	struct ucma_context *ctx;

	ctx = FUNC5(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return NULL;

	FUNC1(&ctx->close_work, ucma_close_id);
	FUNC2(&ctx->ref, 1);
	FUNC3(&ctx->comp);
	FUNC0(&ctx->mc_list);
	ctx->file = file;

	if (FUNC7(&ctx_table, &ctx->id, ctx, xa_limit_32b, GFP_KERNEL))
		goto error;

	FUNC6(&ctx->list, &file->ctx_list);
	return ctx;

error:
	FUNC4(ctx);
	return NULL;
}