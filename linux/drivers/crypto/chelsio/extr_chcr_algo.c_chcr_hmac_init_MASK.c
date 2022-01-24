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
struct hmac_ctx {int /*<<< orphan*/  ipad; } ;
struct crypto_ahash {int dummy; } ;
struct chcr_ahash_req_ctx {unsigned int data_len; int /*<<< orphan*/  partial_hash; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct hmac_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int SHA224_DIGEST_SIZE ; 
 unsigned int SHA256_DIGEST_SIZE ; 
 unsigned int SHA384_DIGEST_SIZE ; 
 unsigned int SHA512_DIGEST_SIZE ; 
 struct chcr_ahash_req_ctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 unsigned int FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_ahash*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct ahash_request *areq)
{
	struct chcr_ahash_req_ctx *req_ctx = FUNC1(areq);
	struct crypto_ahash *rtfm = FUNC4(areq);
	struct hmac_ctx *hmacctx = FUNC0(FUNC7(rtfm));
	unsigned int digestsize = FUNC3(rtfm);
	unsigned int bs = FUNC6(FUNC5(rtfm));

	FUNC2(areq);
	req_ctx->data_len = bs;
	if (FUNC8(FUNC5(rtfm))) {
		if (digestsize == SHA224_DIGEST_SIZE)
			FUNC9(req_ctx->partial_hash, hmacctx->ipad,
			       SHA256_DIGEST_SIZE);
		else if (digestsize == SHA384_DIGEST_SIZE)
			FUNC9(req_ctx->partial_hash, hmacctx->ipad,
			       SHA512_DIGEST_SIZE);
		else
			FUNC9(req_ctx->partial_hash, hmacctx->ipad,
			       digestsize);
	}
	return 0;
}