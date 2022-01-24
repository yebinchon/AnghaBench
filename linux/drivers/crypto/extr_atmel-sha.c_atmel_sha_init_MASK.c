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
struct atmel_sha_reqctx {int /*<<< orphan*/  buflen; scalar_t__* digcnt; scalar_t__ bufcnt; int /*<<< orphan*/  block_size; scalar_t__ flags; struct atmel_sha_dev* dd; } ;
struct atmel_sha_dev {int /*<<< orphan*/  dev; } ;
struct atmel_sha_ctx {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SHA1_BLOCK_SIZE ; 
#define  SHA1_DIGEST_SIZE 132 
 int /*<<< orphan*/  SHA224_BLOCK_SIZE ; 
#define  SHA224_DIGEST_SIZE 131 
 int /*<<< orphan*/  SHA256_BLOCK_SIZE ; 
#define  SHA256_DIGEST_SIZE 130 
 int /*<<< orphan*/  SHA384_BLOCK_SIZE ; 
#define  SHA384_DIGEST_SIZE 129 
 int /*<<< orphan*/  SHA512_BLOCK_SIZE ; 
#define  SHA512_DIGEST_SIZE 128 
 int /*<<< orphan*/  SHA_BUFFER_LEN ; 
 scalar_t__ SHA_FLAGS_SHA1 ; 
 scalar_t__ SHA_FLAGS_SHA224 ; 
 scalar_t__ SHA_FLAGS_SHA256 ; 
 scalar_t__ SHA_FLAGS_SHA384 ; 
 scalar_t__ SHA_FLAGS_SHA512 ; 
 struct atmel_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 struct atmel_sha_dev* FUNC1 (struct atmel_sha_ctx*) ; 
 struct atmel_sha_ctx* FUNC2 (struct crypto_ahash*) ; 
 int FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC4(req);
	struct atmel_sha_ctx *tctx = FUNC2(tfm);
	struct atmel_sha_reqctx *ctx = FUNC0(req);
	struct atmel_sha_dev *dd = FUNC1(tctx);

	ctx->dd = dd;

	ctx->flags = 0;

	FUNC5(dd->dev, "init: digest size: %d\n",
		FUNC3(tfm));

	switch (FUNC3(tfm)) {
	case SHA1_DIGEST_SIZE:
		ctx->flags |= SHA_FLAGS_SHA1;
		ctx->block_size = SHA1_BLOCK_SIZE;
		break;
	case SHA224_DIGEST_SIZE:
		ctx->flags |= SHA_FLAGS_SHA224;
		ctx->block_size = SHA224_BLOCK_SIZE;
		break;
	case SHA256_DIGEST_SIZE:
		ctx->flags |= SHA_FLAGS_SHA256;
		ctx->block_size = SHA256_BLOCK_SIZE;
		break;
	case SHA384_DIGEST_SIZE:
		ctx->flags |= SHA_FLAGS_SHA384;
		ctx->block_size = SHA384_BLOCK_SIZE;
		break;
	case SHA512_DIGEST_SIZE:
		ctx->flags |= SHA_FLAGS_SHA512;
		ctx->block_size = SHA512_BLOCK_SIZE;
		break;
	default:
		return -EINVAL;
		break;
	}

	ctx->bufcnt = 0;
	ctx->digcnt[0] = 0;
	ctx->digcnt[1] = 0;
	ctx->buflen = SHA_BUFFER_LEN;

	return 0;
}