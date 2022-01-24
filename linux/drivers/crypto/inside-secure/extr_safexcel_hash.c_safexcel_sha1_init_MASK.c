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
struct safexcel_ahash_req {int /*<<< orphan*/  block_sz; int /*<<< orphan*/  state_sz; int /*<<< orphan*/  digest; } ;
struct safexcel_ahash_ctx {int /*<<< orphan*/  alg; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_CONTROL_CRYPTO_ALG_SHA1 ; 
 int /*<<< orphan*/  CONTEXT_CONTROL_DIGEST_PRECOMPUTED ; 
 int /*<<< orphan*/  SHA1_BLOCK_SIZE ; 
 int /*<<< orphan*/  SHA1_DIGEST_SIZE ; 
 struct safexcel_ahash_req* FUNC0 (struct ahash_request*) ; 
 struct safexcel_ahash_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct safexcel_ahash_req*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *areq)
{
	struct safexcel_ahash_ctx *ctx = FUNC1(FUNC2(areq));
	struct safexcel_ahash_req *req = FUNC0(areq);

	FUNC3(req, 0, sizeof(*req));

	ctx->alg = CONTEXT_CONTROL_CRYPTO_ALG_SHA1;
	req->digest = CONTEXT_CONTROL_DIGEST_PRECOMPUTED;
	req->state_sz = SHA1_DIGEST_SIZE;
	req->block_sz = SHA1_BLOCK_SIZE;

	return 0;
}