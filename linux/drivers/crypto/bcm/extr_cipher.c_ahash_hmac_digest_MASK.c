#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iproc_reqctx_s {int is_sw_hmac; unsigned int hash_carry_len; unsigned int total_todo; int /*<<< orphan*/  hash_carry; } ;
struct TYPE_5__ {int /*<<< orphan*/  mode; } ;
struct iproc_ctx_s {int /*<<< orphan*/  ipad; TYPE_2__ auth; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int /*<<< orphan*/  nbytes; } ;
struct TYPE_4__ {scalar_t__ spu_type; } ;
struct TYPE_6__ {TYPE_1__ spu; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_MODE_HASH ; 
 int /*<<< orphan*/  HASH_MODE_HMAC ; 
 scalar_t__ SPU_TYPE_SPU2 ; 
 int FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*) ; 
 struct iproc_reqctx_s* FUNC2 (struct ahash_request*) ; 
 struct iproc_ctx_s* FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ iproc_priv ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct ahash_request *req)
{
	struct iproc_reqctx_s *rctx = FUNC2(req);
	struct crypto_ahash *tfm = FUNC4(req);
	struct iproc_ctx_s *ctx = FUNC3(tfm);
	unsigned int blocksize =
			FUNC6(FUNC5(tfm));

	FUNC7("ahash_hmac_digest() nbytes:%u\n", req->nbytes);

	/* Perform initialization and then call finup */
	FUNC1(req);

	if (iproc_priv.spu.spu_type == SPU_TYPE_SPU2) {
		/*
		 * SPU2 supports full HMAC implementation in the
		 * hardware, need not to generate IPAD, OPAD and
		 * outer hash in software.
		 * Only for hash key len > hash block size, SPU2
		 * expects to perform hashing on the key, shorten
		 * it to digest size and feed it as hash key.
		 */
		rctx->is_sw_hmac = false;
		ctx->auth.mode = HASH_MODE_HMAC;
	} else {
		rctx->is_sw_hmac = true;
		ctx->auth.mode = HASH_MODE_HASH;
		/* start with a prepended ipad */
		FUNC8(rctx->hash_carry, ctx->ipad, blocksize);
		rctx->hash_carry_len = blocksize;
		rctx->total_todo += blocksize;
	}

	return FUNC0(req);
}