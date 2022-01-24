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
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t block_size; size_t hash_size; size_t* digcnt; int /*<<< orphan*/  digest; int /*<<< orphan*/  flags; scalar_t__ bufcnt; } ;
struct atmel_sha_hmac_ctx {int /*<<< orphan*/  ipad; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHA_FLAGS_RESTORE ; 
 struct atmel_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 struct atmel_sha_hmac_ctx* FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC5(struct atmel_sha_dev *dd)
{
	struct ahash_request *req = dd->req;
	struct atmel_sha_reqctx *ctx = FUNC0(req);
	struct crypto_ahash *tfm = FUNC3(req);
	struct atmel_sha_hmac_ctx *hmac = FUNC2(tfm);
	size_t bs = ctx->block_size;
	size_t hs = ctx->hash_size;

	ctx->bufcnt = 0;
	ctx->digcnt[0] = bs;
	ctx->digcnt[1] = 0;
	ctx->flags |= SHA_FLAGS_RESTORE;
	FUNC4(ctx->digest, hmac->ipad, hs);
	return FUNC1(dd, 0);
}