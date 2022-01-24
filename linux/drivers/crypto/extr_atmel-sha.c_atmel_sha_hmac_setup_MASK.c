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
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {int flags; size_t block_size; void* hash_size; } ;
struct atmel_sha_hmac_ctx {int (* resume ) (struct atmel_sha_dev*) ;scalar_t__ ipad; int /*<<< orphan*/  hkey; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;
typedef  int (* atmel_sha_fn_t ) (struct atmel_sha_dev*) ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 size_t SHA1_BLOCK_SIZE ; 
 void* SHA1_DIGEST_SIZE ; 
 size_t SHA224_BLOCK_SIZE ; 
 size_t SHA256_BLOCK_SIZE ; 
 void* SHA256_DIGEST_SIZE ; 
 size_t SHA384_BLOCK_SIZE ; 
 size_t SHA512_BLOCK_SIZE ; 
 void* SHA512_DIGEST_SIZE ; 
 int SHA_FLAGS_ALGO_MASK ; 
#define  SHA_FLAGS_SHA1 132 
#define  SHA_FLAGS_SHA224 131 
#define  SHA_FLAGS_SHA256 130 
#define  SHA_FLAGS_SHA384 129 
#define  SHA_FLAGS_SHA512 128 
 struct atmel_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atmel_sha_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,unsigned int*) ; 
 int FUNC4 (struct atmel_sha_dev*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct atmel_sha_hmac_ctx* FUNC5 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC6 (struct ahash_request*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct atmel_sha_dev *dd,
				atmel_sha_fn_t resume)
{
	struct ahash_request *req = dd->req;
	struct atmel_sha_reqctx *ctx = FUNC0(req);
	struct crypto_ahash *tfm = FUNC6(req);
	struct atmel_sha_hmac_ctx *hmac = FUNC5(tfm);
	unsigned int keylen;
	const u8 *key;
	size_t bs;

	hmac->resume = resume;
	switch (ctx->flags & SHA_FLAGS_ALGO_MASK) {
	case SHA_FLAGS_SHA1:
		ctx->block_size = SHA1_BLOCK_SIZE;
		ctx->hash_size = SHA1_DIGEST_SIZE;
		break;

	case SHA_FLAGS_SHA224:
		ctx->block_size = SHA224_BLOCK_SIZE;
		ctx->hash_size = SHA256_DIGEST_SIZE;
		break;

	case SHA_FLAGS_SHA256:
		ctx->block_size = SHA256_BLOCK_SIZE;
		ctx->hash_size = SHA256_DIGEST_SIZE;
		break;

	case SHA_FLAGS_SHA384:
		ctx->block_size = SHA384_BLOCK_SIZE;
		ctx->hash_size = SHA512_DIGEST_SIZE;
		break;

	case SHA_FLAGS_SHA512:
		ctx->block_size = SHA512_BLOCK_SIZE;
		ctx->hash_size = SHA512_DIGEST_SIZE;
		break;

	default:
		return FUNC1(dd, -EINVAL);
	}
	bs = ctx->block_size;

	if (FUNC7(!FUNC3(&hmac->hkey, &key, &keylen)))
		return resume(dd);

	/* Compute K' from K. */
	if (FUNC10(keylen > bs))
		return FUNC4(dd, key, keylen);

	/* Prepare ipad. */
	FUNC8((u8 *)hmac->ipad, key, keylen);
	FUNC9((u8 *)hmac->ipad + keylen, 0, bs - keylen);
	return FUNC2(dd);
}