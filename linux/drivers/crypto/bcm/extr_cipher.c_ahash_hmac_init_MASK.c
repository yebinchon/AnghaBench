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
struct iproc_reqctx_s {int is_sw_hmac; unsigned int hash_carry_len; unsigned int total_todo; int /*<<< orphan*/  hash_carry; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;
struct iproc_ctx_s {int /*<<< orphan*/  ipad; TYPE_1__ auth; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_MODE_HASH ; 
 int /*<<< orphan*/  FUNC0 (struct ahash_request*) ; 
 struct iproc_reqctx_s* FUNC1 (struct ahash_request*) ; 
 struct iproc_ctx_s* FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ahash*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct iproc_ctx_s*) ; 

__attribute__((used)) static int FUNC9(struct ahash_request *req)
{
	struct iproc_reqctx_s *rctx = FUNC1(req);
	struct crypto_ahash *tfm = FUNC3(req);
	struct iproc_ctx_s *ctx = FUNC2(tfm);
	unsigned int blocksize =
			FUNC5(FUNC4(tfm));

	FUNC6("ahash_hmac_init()\n");

	/* init the context as a hash */
	FUNC0(req);

	if (!FUNC8(ctx)) {
		/* SPU-M can do incr hashing but needs sw for outer HMAC */
		rctx->is_sw_hmac = true;
		ctx->auth.mode = HASH_MODE_HASH;
		/* start with a prepended ipad */
		FUNC7(rctx->hash_carry, ctx->ipad, blocksize);
		rctx->hash_carry_len = blocksize;
		rctx->total_todo += blocksize;
	}

	return 0;
}