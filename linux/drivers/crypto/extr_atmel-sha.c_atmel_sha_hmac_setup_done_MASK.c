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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t hash_size; } ;
struct atmel_sha_hmac_ctx {int (* resume ) (struct atmel_sha_dev*) ;int /*<<< orphan*/  hkey; int /*<<< orphan*/ * opad; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 struct atmel_sha_reqctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 struct atmel_sha_hmac_ctx* FUNC4 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC5 (struct ahash_request*) ; 
 int FUNC6 (struct atmel_sha_dev*) ; 

__attribute__((used)) static int FUNC7(struct atmel_sha_dev *dd)
{
	struct ahash_request *req = dd->req;
	struct crypto_ahash *tfm = FUNC5(req);
	struct atmel_sha_hmac_ctx *hmac = FUNC4(tfm);
	struct atmel_sha_reqctx *ctx = FUNC1(req);
	size_t hs = ctx->hash_size;
	size_t i, num_words = hs / sizeof(u32);

	for (i = 0; i < num_words; ++i)
		hmac->opad[i] = FUNC3(dd, FUNC0(i));
	FUNC2(&hmac->hkey);
	return hmac->resume(dd);
}