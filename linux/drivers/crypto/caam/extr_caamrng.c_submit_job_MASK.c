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
struct device {int dummy; } ;
struct caam_rng_ctx {int current_buf; struct device* jrdev; struct buf_data* bufs; } ;
struct buf_data {int /*<<< orphan*/  empty; int /*<<< orphan*/  filled; int /*<<< orphan*/ * hw_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct caam_rng_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rng_done ; 

__attribute__((used)) static inline int FUNC5(struct caam_rng_ctx *ctx, int to_current)
{
	struct buf_data *bd = &ctx->bufs[!(to_current ^ ctx->current_buf)];
	struct device *jrdev = ctx->jrdev;
	u32 *desc = bd->hw_desc;
	int err;

	FUNC3(jrdev, "submitting job %d\n", !(to_current ^ ctx->current_buf));
	FUNC4(&bd->filled);
	err = FUNC1(jrdev, desc, rng_done, ctx);
	if (err)
		FUNC2(&bd->filled); /* don't wait on failed job*/
	else
		FUNC0(&bd->empty); /* note if pending */

	return err;
}