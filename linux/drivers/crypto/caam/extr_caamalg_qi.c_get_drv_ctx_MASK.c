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
struct caam_drv_ctx {int op_type; } ;
struct caam_ctx {int /*<<< orphan*/  lock; struct caam_drv_ctx** drv_ctx; int /*<<< orphan*/  qidev; int /*<<< orphan*/ * sh_desc_dec; int /*<<< orphan*/ * sh_desc_enc; } ;
typedef  enum optype { ____Placeholder_optype } optype ;

/* Variables and functions */
 int ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (struct caam_drv_ctx*) ; 
 struct caam_drv_ctx* FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct caam_drv_ctx *FUNC6(struct caam_ctx *ctx,
					enum optype type)
{
	/*
	 * This function is called on the fast path with values of 'type'
	 * known at compile time. Invalid arguments are not expected and
	 * thus no checks are made.
	 */
	struct caam_drv_ctx *drv_ctx = ctx->drv_ctx[type];
	u32 *desc;

	if (FUNC5(!drv_ctx)) {
		FUNC3(&ctx->lock);

		/* Read again to check if some other core init drv_ctx */
		drv_ctx = ctx->drv_ctx[type];
		if (!drv_ctx) {
			int cpu;

			if (type == ENCRYPT)
				desc = ctx->sh_desc_enc;
			else /* (type == DECRYPT) */
				desc = ctx->sh_desc_dec;

			cpu = FUNC2();
			drv_ctx = FUNC1(ctx->qidev, &cpu, desc);
			if (!FUNC0(drv_ctx))
				drv_ctx->op_type = type;

			ctx->drv_ctx[type] = drv_ctx;
		}

		FUNC4(&ctx->lock);
	}

	return drv_ctx;
}