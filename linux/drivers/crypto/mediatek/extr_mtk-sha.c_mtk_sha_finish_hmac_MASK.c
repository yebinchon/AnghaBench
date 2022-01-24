#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mtk_sha_reqctx {int /*<<< orphan*/  ds; int /*<<< orphan*/  bs; } ;
struct mtk_sha_hmac_ctx {int /*<<< orphan*/  opad; int /*<<< orphan*/  shash; } ;
struct mtk_sha_ctx {struct mtk_sha_hmac_ctx* base; } ;
struct TYPE_7__ {int /*<<< orphan*/  tfm; } ;
struct ahash_request {int /*<<< orphan*/  result; TYPE_1__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct mtk_sha_reqctx* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_sha_ctx* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* shash ; 

__attribute__((used)) static int FUNC6(struct ahash_request *req)
{
	struct mtk_sha_ctx *tctx = FUNC5(req->base.tfm);
	struct mtk_sha_hmac_ctx *bctx = tctx->base;
	struct mtk_sha_reqctx *ctx = FUNC1(req);

	FUNC0(shash, bctx->shash);

	shash->tfm = bctx->shash;

	return FUNC3(shash) ?:
	       FUNC4(shash, bctx->opad, ctx->bs) ?:
	       FUNC2(shash, req->result, ctx->ds, req->result);
}