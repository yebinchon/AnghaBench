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
struct safexcel_ahash_req {int hmac; void* block_sz; int /*<<< orphan*/  state_sz; int /*<<< orphan*/  digest; void* processed; void* len; int /*<<< orphan*/  state; } ;
struct safexcel_ahash_ctx {int /*<<< orphan*/  alg; int /*<<< orphan*/  ipad; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_CONTROL_CRYPTO_ALG_SHA256 ; 
 int /*<<< orphan*/  CONTEXT_CONTROL_DIGEST_PRECOMPUTED ; 
 void* SHA256_BLOCK_SIZE ; 
 int /*<<< orphan*/  SHA256_DIGEST_SIZE ; 
 struct safexcel_ahash_req* FUNC0 (struct ahash_request*) ; 
 struct safexcel_ahash_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct safexcel_ahash_req*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *areq)
{
	struct safexcel_ahash_ctx *ctx = FUNC1(FUNC2(areq));
	struct safexcel_ahash_req *req = FUNC0(areq);

	FUNC4(req, 0, sizeof(*req));

	/* Start from ipad precompute */
	FUNC3(req->state, ctx->ipad, SHA256_DIGEST_SIZE);
	/* Already processed the key^ipad part now! */
	req->len	= SHA256_BLOCK_SIZE;
	req->processed	= SHA256_BLOCK_SIZE;

	ctx->alg = CONTEXT_CONTROL_CRYPTO_ALG_SHA256;
	req->digest = CONTEXT_CONTROL_DIGEST_PRECOMPUTED;
	req->state_sz = SHA256_DIGEST_SIZE;
	req->block_sz = SHA256_BLOCK_SIZE;
	req->hmac = true;

	return 0;
}