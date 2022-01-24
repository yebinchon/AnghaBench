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
struct omap_sham_hmac_ctx {int /*<<< orphan*/ * shash; } ;
struct omap_sham_ctx {int flags; struct omap_sham_hmac_ctx* base; int /*<<< orphan*/ * fallback; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAGS_HMAC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct omap_sham_ctx* FUNC2 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct omap_sham_ctx *tctx = FUNC2(tfm);

	FUNC1(tctx->fallback);
	tctx->fallback = NULL;

	if (tctx->flags & FUNC0(FLAGS_HMAC)) {
		struct omap_sham_hmac_ctx *bctx = tctx->base;
		FUNC1(bctx->shash);
	}
}