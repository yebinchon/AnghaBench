#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iproc_ctx_s {scalar_t__ authkeylen; TYPE_2__* shash; int /*<<< orphan*/  authkey; } ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct ahash_request {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 int FUNC2 (struct ahash_request*) ; 
 struct iproc_ctx_s* FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*) ; 
 struct crypto_shash* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_shash*) ; 
 scalar_t__ FUNC8 (struct crypto_shash*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (struct crypto_shash*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct iproc_ctx_s*) ; 

__attribute__((used)) static int FUNC15(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC4(req);
	struct iproc_ctx_s *ctx = FUNC3(tfm);
	const char *alg_name;
	struct crypto_shash *hash;
	int ret;
	gfp_t gfp;

	if (FUNC14(ctx)) {
		/*
		 * If we get an incremental hashing request and it's not
		 * supported by the hardware, we need to handle it in software
		 * by calling synchronous hash functions.
		 */
		alg_name = FUNC11(FUNC5(tfm));
		hash = FUNC6(alg_name, 0, 0);
		if (FUNC0(hash)) {
			ret = FUNC1(hash);
			goto err;
		}

		gfp = (req->base.flags & (CRYPTO_TFM_REQ_MAY_BACKLOG |
		       CRYPTO_TFM_REQ_MAY_SLEEP)) ? GFP_KERNEL : GFP_ATOMIC;
		ctx->shash = FUNC13(sizeof(*ctx->shash) +
				     FUNC8(hash), gfp);
		if (!ctx->shash) {
			ret = -ENOMEM;
			goto err_hash;
		}
		ctx->shash->tfm = hash;

		/* Set the key using data we already have from setkey */
		if (ctx->authkeylen > 0) {
			ret = FUNC10(hash, ctx->authkey,
						  ctx->authkeylen);
			if (ret)
				goto err_shash;
		}

		/* Initialize hash w/ this key and other params */
		ret = FUNC9(ctx->shash);
		if (ret)
			goto err_shash;
	} else {
		/* Otherwise call the internal function which uses SPU hw */
		ret = FUNC2(req);
	}

	return ret;

err_shash:
	FUNC12(ctx->shash);
err_hash:
	FUNC7(hash);
err:
	return ret;
}