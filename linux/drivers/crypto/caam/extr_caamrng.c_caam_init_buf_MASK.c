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
struct caam_rng_ctx {int current_buf; struct buf_data* bufs; } ;
struct buf_data {int /*<<< orphan*/  filled; int /*<<< orphan*/  empty; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct caam_rng_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct caam_rng_ctx*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct caam_rng_ctx *ctx, int buf_id)
{
	struct buf_data *bd = &ctx->bufs[buf_id];
	int err;

	err = FUNC1(ctx, buf_id);
	if (err)
		return err;

	FUNC0(&bd->empty, BUF_EMPTY);
	FUNC2(ctx, buf_id == ctx->current_buf);
	FUNC3(&bd->filled);

	return 0;
}