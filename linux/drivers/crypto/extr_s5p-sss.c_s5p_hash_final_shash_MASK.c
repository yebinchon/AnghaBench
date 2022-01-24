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
struct s5p_hash_reqctx {int /*<<< orphan*/  bufcnt; int /*<<< orphan*/  buffer; } ;
struct s5p_hash_ctx {int /*<<< orphan*/  fallback; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;
struct ahash_request {int /*<<< orphan*/  result; TYPE_1__ base; } ;

/* Variables and functions */
 struct s5p_hash_reqctx* FUNC0 (struct ahash_request*) ; 
 struct s5p_hash_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct s5p_hash_ctx *tctx = FUNC1(req->base.tfm);
	struct s5p_hash_reqctx *ctx = FUNC0(req);

	return FUNC2(tctx->fallback, req->base.flags,
				     ctx->buffer, ctx->bufcnt, req->result);
}