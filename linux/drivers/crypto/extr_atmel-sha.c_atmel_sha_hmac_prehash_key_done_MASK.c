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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t block_size; } ;
struct atmel_sha_hmac_ctx {int /*<<< orphan*/ * ipad; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 struct atmel_sha_reqctx* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct atmel_sha_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 struct atmel_sha_hmac_ctx* FUNC4 (struct crypto_ahash*) ; 
 size_t FUNC5 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC6 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC8(struct atmel_sha_dev *dd)
{
	struct ahash_request *req = dd->req;
	struct crypto_ahash *tfm = FUNC6(req);
	struct atmel_sha_hmac_ctx *hmac = FUNC4(tfm);
	struct atmel_sha_reqctx *ctx = FUNC1(req);
	size_t ds = FUNC5(tfm);
	size_t bs = ctx->block_size;
	size_t i, num_words = ds / sizeof(u32);

	/* Prepare ipad. */
	for (i = 0; i < num_words; ++i)
		hmac->ipad[i] = FUNC3(dd, FUNC0(i));
	FUNC7((u8 *)hmac->ipad + ds, 0, bs - ds);
	return FUNC2(dd);
}