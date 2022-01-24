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
struct chcr_ahash_req_ctx {int /*<<< orphan*/  partial_hash; int /*<<< orphan*/  reqlen; int /*<<< orphan*/  reqbfr; int /*<<< orphan*/  bfr1; int /*<<< orphan*/  data_len; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHCR_HASH_MAX_DIGEST_SIZE ; 
 struct chcr_ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct chcr_ahash_req_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *areq, void *out)
{
	struct chcr_ahash_req_ctx *req_ctx = FUNC0(areq);
	struct chcr_ahash_req_ctx *state = out;

	state->reqlen = req_ctx->reqlen;
	state->data_len = req_ctx->data_len;
	FUNC2(state->bfr1, req_ctx->reqbfr, req_ctx->reqlen);
	FUNC2(state->partial_hash, req_ctx->partial_hash,
	       CHCR_HASH_MAX_DIGEST_SIZE);
	FUNC1(state);
	return 0;
}