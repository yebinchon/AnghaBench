#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct n2_hash_req_ctx {TYPE_3__ fallback_req; } ;
struct n2_hash_ctx {int /*<<< orphan*/  fallback_tfm; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct ahash_request {TYPE_2__ base; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 struct n2_hash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct n2_hash_ctx* FUNC2 (struct crypto_ahash*) ; 
 int FUNC3 (TYPE_3__*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *req)
{
	struct n2_hash_req_ctx *rctx = FUNC0(req);
	struct crypto_ahash *tfm = FUNC4(req);
	struct n2_hash_ctx *ctx = FUNC2(tfm);

	FUNC1(&rctx->fallback_req, ctx->fallback_tfm);
	rctx->fallback_req.base.flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP;

	return FUNC3(&rctx->fallback_req);
}