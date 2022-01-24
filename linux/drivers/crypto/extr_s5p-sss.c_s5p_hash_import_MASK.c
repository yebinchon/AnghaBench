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
struct s5p_hash_reqctx {scalar_t__ bufcnt; int error; int /*<<< orphan*/  dd; } ;
struct s5p_hash_ctx {int /*<<< orphan*/  dd; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ BUFLEN ; 
 int EINVAL ; 
 struct s5p_hash_reqctx* FUNC0 (struct ahash_request*) ; 
 struct s5p_hash_ctx* FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_hash_reqctx*,void const*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req, const void *in)
{
	struct s5p_hash_reqctx *ctx = FUNC0(req);
	struct crypto_ahash *tfm = FUNC2(req);
	struct s5p_hash_ctx *tctx = FUNC1(tfm);
	const struct s5p_hash_reqctx *ctx_in = in;

	FUNC3(ctx, in, sizeof(*ctx) + BUFLEN);
	if (ctx_in->bufcnt > BUFLEN) {
		ctx->error = true;
		return -EINVAL;
	}

	ctx->dd = tctx->dd;
	ctx->error = false;

	return 0;
}