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
struct omap_sham_reqctx {int dummy; } ;
struct omap_sham_hmac_ctx {void* shash; } ;
struct omap_sham_ctx {void* fallback; int /*<<< orphan*/  flags; struct omap_sham_hmac_ctx* base; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BUFLEN ; 
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 int /*<<< orphan*/  FLAGS_HMAC ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 char* FUNC7 (struct crypto_tfm*) ; 
 struct omap_sham_ctx* FUNC8 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

__attribute__((used)) static int FUNC10(struct crypto_tfm *tfm, const char *alg_base)
{
	struct omap_sham_ctx *tctx = FUNC8(tfm);
	const char *alg_name = FUNC7(tfm);

	/* Allocate a fallback and abort if it failed. */
	tctx->fallback = FUNC5(alg_name, 0,
					    CRYPTO_ALG_NEED_FALLBACK);
	if (FUNC1(tctx->fallback)) {
		FUNC9("omap-sham: fallback driver '%s' "
				"could not be loaded.\n", alg_name);
		return FUNC2(tctx->fallback);
	}

	FUNC4(FUNC3(tfm),
				 sizeof(struct omap_sham_reqctx) + BUFLEN);

	if (alg_base) {
		struct omap_sham_hmac_ctx *bctx = tctx->base;
		tctx->flags |= FUNC0(FLAGS_HMAC);
		bctx->shash = FUNC5(alg_base, 0,
						CRYPTO_ALG_NEED_FALLBACK);
		if (FUNC1(bctx->shash)) {
			FUNC9("omap-sham: base driver '%s' "
					"could not be loaded.\n", alg_base);
			FUNC6(tctx->fallback);
			return FUNC2(bctx->shash);
		}

	}

	return 0;
}