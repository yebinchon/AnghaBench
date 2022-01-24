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
struct crypto_async_request {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ccp_aes_cmac_req_ctx {unsigned int hash_rem; unsigned int nbytes; unsigned int buf_count; int /*<<< orphan*/  data_sg; int /*<<< orphan*/  iv; scalar_t__ final; int /*<<< orphan*/  src; int /*<<< orphan*/  buf; } ;
struct ahash_request {scalar_t__ result; } ;

/* Variables and functions */
 struct ahash_request* FUNC0 (struct crypto_async_request*) ; 
 struct ccp_aes_cmac_req_ctx* FUNC1 (struct ahash_request*) ; 
 unsigned int FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct crypto_async_request *async_req,
				 int ret)
{
	struct ahash_request *req = FUNC0(async_req);
	struct crypto_ahash *tfm = FUNC3(req);
	struct ccp_aes_cmac_req_ctx *rctx = FUNC1(req);
	unsigned int digest_size = FUNC2(tfm);

	if (ret)
		goto e_free;

	if (rctx->hash_rem) {
		/* Save remaining data to buffer */
		unsigned int offset = rctx->nbytes - rctx->hash_rem;

		FUNC5(rctx->buf, rctx->src,
					 offset, rctx->hash_rem, 0);
		rctx->buf_count = rctx->hash_rem;
	} else {
		rctx->buf_count = 0;
	}

	/* Update result area if supplied */
	if (req->result && rctx->final)
		FUNC4(req->result, rctx->iv, digest_size);

e_free:
	FUNC6(&rctx->data_sg);

	return ret;
}