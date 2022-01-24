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
struct sha256_state {int /*<<< orphan*/  buf; scalar_t__ state; int /*<<< orphan*/  count; } ;
struct sha1_state {int /*<<< orphan*/  buffer; scalar_t__ state; int /*<<< orphan*/  count; } ;
struct qce_sha_reqctx {unsigned long flags; int /*<<< orphan*/  buf; int /*<<< orphan*/  digest; int /*<<< orphan*/  count; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 struct qce_sha_reqctx* FUNC4 (struct ahash_request*) ; 
 unsigned int FUNC5 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC6 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_ahash*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct ahash_request *req, void *out)
{
	struct crypto_ahash *ahash = FUNC6(req);
	struct qce_sha_reqctx *rctx = FUNC4(req);
	unsigned long flags = rctx->flags;
	unsigned int digestsize = FUNC5(ahash);
	unsigned int blocksize =
			FUNC8(FUNC7(ahash));

	if (FUNC0(flags) || FUNC1(flags)) {
		struct sha1_state *out_state = out;

		out_state->count = rctx->count;
		FUNC10((__be32 *)out_state->state,
				       rctx->digest, digestsize);
		FUNC9(out_state->buffer, rctx->buf, blocksize);
	} else if (FUNC2(flags) || FUNC3(flags)) {
		struct sha256_state *out_state = out;

		out_state->count = rctx->count;
		FUNC10((__be32 *)out_state->state,
				       rctx->digest, digestsize);
		FUNC9(out_state->buf, rctx->buf, blocksize);
	} else {
		return -EINVAL;
	}

	return 0;
}