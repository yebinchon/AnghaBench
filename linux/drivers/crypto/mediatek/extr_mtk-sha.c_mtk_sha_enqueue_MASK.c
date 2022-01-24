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
typedef  int /*<<< orphan*/  u32 ;
struct mtk_sha_reqctx {int /*<<< orphan*/  op; } ;
struct mtk_sha_ctx {int /*<<< orphan*/  id; int /*<<< orphan*/  cryp; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 struct mtk_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 struct mtk_sha_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahash_request*) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req, u32 op)
{
	struct mtk_sha_reqctx *ctx = FUNC0(req);
	struct mtk_sha_ctx *tctx = FUNC1(req->base.tfm);

	ctx->op = op;

	return FUNC2(tctx->cryp, tctx->id, req);
}