#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s5p_hash_reqctx {int op_update; } ;
struct s5p_hash_ctx {int /*<<< orphan*/  dd; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 struct s5p_hash_reqctx* FUNC0 (struct ahash_request*) ; 
 struct s5p_hash_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ahash_request*) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req, bool op)
{
	struct s5p_hash_reqctx *ctx = FUNC0(req);
	struct s5p_hash_ctx *tctx = FUNC1(req->base.tfm);

	ctx->op_update = op;

	return FUNC2(tctx->dd, req);
}