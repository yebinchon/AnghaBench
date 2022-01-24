#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s5p_hash_reqctx {int error; int finup; int /*<<< orphan*/  nregs; int /*<<< orphan*/  engine; scalar_t__ skip; scalar_t__ total; scalar_t__ digcnt; scalar_t__ bufcnt; TYPE_1__* dd; } ;
struct s5p_hash_ctx {TYPE_1__* dd; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HASH_MD5_MAX_REG ; 
 int /*<<< orphan*/  HASH_SHA1_MAX_REG ; 
 int /*<<< orphan*/  HASH_SHA256_MAX_REG ; 
#define  MD5_DIGEST_SIZE 130 
#define  SHA1_DIGEST_SIZE 129 
#define  SHA256_DIGEST_SIZE 128 
 int /*<<< orphan*/  SSS_HASH_ENGINE_MD5 ; 
 int /*<<< orphan*/  SSS_HASH_ENGINE_SHA1 ; 
 int /*<<< orphan*/  SSS_HASH_ENGINE_SHA256 ; 
 struct s5p_hash_reqctx* FUNC0 (struct ahash_request*) ; 
 struct s5p_hash_ctx* FUNC1 (struct crypto_ahash*) ; 
 int FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct ahash_request *req)
{
	struct s5p_hash_reqctx *ctx = FUNC0(req);
	struct crypto_ahash *tfm = FUNC3(req);
	struct s5p_hash_ctx *tctx = FUNC1(tfm);

	ctx->dd = tctx->dd;
	ctx->error = false;
	ctx->finup = false;
	ctx->bufcnt = 0;
	ctx->digcnt = 0;
	ctx->total = 0;
	ctx->skip = 0;

	FUNC4(tctx->dd->dev, "init: digest size: %d\n",
		FUNC2(tfm));

	switch (FUNC2(tfm)) {
	case MD5_DIGEST_SIZE:
		ctx->engine = SSS_HASH_ENGINE_MD5;
		ctx->nregs = HASH_MD5_MAX_REG;
		break;
	case SHA1_DIGEST_SIZE:
		ctx->engine = SSS_HASH_ENGINE_SHA1;
		ctx->nregs = HASH_SHA1_MAX_REG;
		break;
	case SHA256_DIGEST_SIZE:
		ctx->engine = SSS_HASH_ENGINE_SHA256;
		ctx->nregs = HASH_SHA256_MAX_REG;
		break;
	default:
		ctx->error = true;
		return -EINVAL;
	}

	return 0;
}