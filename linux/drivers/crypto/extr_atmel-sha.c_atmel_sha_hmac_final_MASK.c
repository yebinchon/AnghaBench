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
typedef  size_t u32 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t block_size; size_t hash_size; size_t flags; scalar_t__ digest; } ;
struct atmel_sha_hmac_ctx {size_t* opad; } ;
struct atmel_sha_dev {int /*<<< orphan*/  tmp; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHA_BCR ; 
 int /*<<< orphan*/  SHA_CR ; 
 size_t SHA_CR_FIRST ; 
 size_t SHA_CR_WUIHV ; 
 size_t SHA_FLAGS_ALGO_MASK ; 
 int /*<<< orphan*/  SHA_MR ; 
 size_t SHA_MR_MODE_AUTO ; 
 size_t SHA_MR_UIHV ; 
 int /*<<< orphan*/  SHA_MSR ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 struct atmel_sha_reqctx* FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct atmel_sha_dev*,int /*<<< orphan*/ *,size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_sha_hmac_final_done ; 
 size_t FUNC4 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_sha_dev*,int /*<<< orphan*/ ,size_t) ; 
 struct atmel_sha_hmac_ctx* FUNC6 (struct crypto_ahash*) ; 
 size_t FUNC7 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC8 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t*,size_t) ; 

__attribute__((used)) static int FUNC10(struct atmel_sha_dev *dd)
{
	struct ahash_request *req = dd->req;
	struct atmel_sha_reqctx *ctx = FUNC2(req);
	struct crypto_ahash *tfm = FUNC8(req);
	struct atmel_sha_hmac_ctx *hmac = FUNC6(tfm);
	u32 *digest = (u32 *)ctx->digest;
	size_t ds = FUNC7(tfm);
	size_t bs = ctx->block_size;
	size_t hs = ctx->hash_size;
	size_t i, num_words;
	u32 mr;

	/* Save d = SHA((K' + ipad) | msg). */
	num_words = ds / sizeof(u32);
	for (i = 0; i < num_words; ++i)
		digest[i] = FUNC4(dd, FUNC0(i));

	/* Restore context to finish computing SHA((K' + opad) | d). */
	FUNC5(dd, SHA_CR, SHA_CR_WUIHV);
	num_words = hs / sizeof(u32);
	for (i = 0; i < num_words; ++i)
		FUNC5(dd, FUNC1(i), hmac->opad[i]);

	mr = SHA_MR_MODE_AUTO | SHA_MR_UIHV;
	mr |= (ctx->flags & SHA_FLAGS_ALGO_MASK);
	FUNC5(dd, SHA_MR, mr);
	FUNC5(dd, SHA_MSR, bs + ds);
	FUNC5(dd, SHA_BCR, ds);
	FUNC5(dd, SHA_CR, SHA_CR_FIRST);

	FUNC9(&dd->tmp, digest, ds);
	return FUNC3(dd, &dd->tmp, ds, false, true,
				   atmel_sha_hmac_final_done);
}