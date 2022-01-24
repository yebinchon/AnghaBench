#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct crypto_ahash {int dummy; } ;
struct ccp_sha_req_ctx {int first; unsigned int buf_count; int /*<<< orphan*/  buf; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  ipad; scalar_t__ key_len; } ;
struct TYPE_4__ {TYPE_1__ sha; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct ccp_crypto_ahash_alg {int /*<<< orphan*/  type; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct ccp_sha_req_ctx* FUNC0 (struct ahash_request*) ; 
 struct ccp_crypto_ahash_alg* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ccp_ctx* FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ahash*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct ccp_sha_req_ctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC3(req);
	struct ccp_ctx *ctx = FUNC2(tfm);
	struct ccp_sha_req_ctx *rctx = FUNC0(req);
	struct ccp_crypto_ahash_alg *alg =
		FUNC1(FUNC4(tfm));
	unsigned int block_size =
		FUNC5(FUNC4(tfm));

	FUNC7(rctx, 0, sizeof(*rctx));

	rctx->type = alg->type;
	rctx->first = 1;

	if (ctx->u.sha.key_len) {
		/* Buffer the HMAC key for first update */
		FUNC6(rctx->buf, ctx->u.sha.ipad, block_size);
		rctx->buf_count = block_size;
	}

	return 0;
}