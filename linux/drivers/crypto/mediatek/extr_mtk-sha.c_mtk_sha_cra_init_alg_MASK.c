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
struct mtk_sha_reqctx {int dummy; } ;
struct mtk_sha_hmac_ctx {int /*<<< orphan*/  shash; } ;
struct mtk_sha_ctx {int /*<<< orphan*/  flags; struct mtk_sha_hmac_ctx* base; } ;
struct mtk_cryp {int dummy; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA_FLAGS_HMAC ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_sha_ctx* FUNC5 (struct crypto_tfm*) ; 
 struct mtk_cryp* FUNC6 (struct mtk_sha_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

__attribute__((used)) static int FUNC8(struct crypto_tfm *tfm,
				const char *alg_base)
{
	struct mtk_sha_ctx *tctx = FUNC5(tfm);
	struct mtk_cryp *cryp = NULL;

	cryp = FUNC6(tctx);
	if (!cryp)
		return -ENODEV;

	FUNC3(FUNC2(tfm),
				 sizeof(struct mtk_sha_reqctx));

	if (alg_base) {
		struct mtk_sha_hmac_ctx *bctx = tctx->base;

		tctx->flags |= SHA_FLAGS_HMAC;
		bctx->shash = FUNC4(alg_base, 0,
					CRYPTO_ALG_NEED_FALLBACK);
		if (FUNC0(bctx->shash)) {
			FUNC7("base driver %s could not be loaded.\n",
			       alg_base);

			return FUNC1(bctx->shash);
		}
	}
	return 0;
}