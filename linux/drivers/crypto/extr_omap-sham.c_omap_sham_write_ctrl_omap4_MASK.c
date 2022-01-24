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
typedef  int u32 ;
struct omap_sham_reqctx {int flags; scalar_t__ digcnt; } ;
struct omap_sham_hmac_ctx {scalar_t__ ipad; } ;
struct omap_sham_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  req; } ;
struct omap_sham_ctx {struct omap_sham_hmac_ctx* base; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAGS_HMAC ; 
 int FLAGS_MODE_MASK ; 
 int FLAGS_MODE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct omap_sham_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA_REG_IRQENA ; 
 int /*<<< orphan*/  SHA_REG_IRQENA_OUTPUT_RDY ; 
 int /*<<< orphan*/  FUNC2 (struct omap_sham_dev*) ; 
 int SHA_REG_MASK_DMA_EN ; 
 int SHA_REG_MASK_IT_EN ; 
 int /*<<< orphan*/  FUNC3 (struct omap_sham_dev*) ; 
 int SHA_REG_MODE_ALGO_CONSTANT ; 
 int SHA_REG_MODE_ALGO_MASK ; 
 int SHA_REG_MODE_CLOSE_HASH ; 
 int SHA_REG_MODE_HMAC_KEY_PROC ; 
 int SHA_REG_MODE_HMAC_OUTER_HASH ; 
 int /*<<< orphan*/  FUNC4 (struct omap_sham_dev*,int /*<<< orphan*/ ) ; 
 struct omap_sham_reqctx* FUNC5 (int /*<<< orphan*/ ) ; 
 struct omap_sham_ctx* FUNC6 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC9 (struct omap_sham_reqctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_sham_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct omap_sham_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct omap_sham_dev*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC13(struct omap_sham_dev *dd, size_t length,
				 int final, int dma)
{
	struct omap_sham_reqctx *ctx = FUNC5(dd->req);
	u32 val, mask;

	/*
	 * Setting ALGO_CONST only for the first iteration and
	 * CLOSE_HASH only for the last one. Note that flags mode bits
	 * correspond to algorithm encoding in mode register.
	 */
	val = (ctx->flags & FLAGS_MODE_MASK) >> (FLAGS_MODE_SHIFT);
	if (!ctx->digcnt) {
		struct crypto_ahash *tfm = FUNC7(dd->req);
		struct omap_sham_ctx *tctx = FUNC6(tfm);
		struct omap_sham_hmac_ctx *bctx = tctx->base;
		int bs, nr_dr;

		val |= SHA_REG_MODE_ALGO_CONSTANT;

		if (ctx->flags & FUNC0(FLAGS_HMAC)) {
			bs = FUNC9(ctx);
			nr_dr = bs / (2 * sizeof(u32));
			val |= SHA_REG_MODE_HMAC_KEY_PROC;
			FUNC12(dd, FUNC4(dd, 0),
					  (u32 *)bctx->ipad, nr_dr);
			FUNC12(dd, FUNC1(dd, 0),
					  (u32 *)bctx->ipad + nr_dr, nr_dr);
			ctx->digcnt += bs;
		}
	}

	if (final) {
		val |= SHA_REG_MODE_CLOSE_HASH;

		if (ctx->flags & FUNC0(FLAGS_HMAC))
			val |= SHA_REG_MODE_HMAC_OUTER_HASH;
	}

	mask = SHA_REG_MODE_ALGO_CONSTANT | SHA_REG_MODE_CLOSE_HASH |
	       SHA_REG_MODE_ALGO_MASK | SHA_REG_MODE_HMAC_OUTER_HASH |
	       SHA_REG_MODE_HMAC_KEY_PROC;

	FUNC8(dd->dev, "ctrl: %08x, flags: %08lx\n", val, ctx->flags);
	FUNC11(dd, FUNC3(dd), val, mask);
	FUNC10(dd, SHA_REG_IRQENA, SHA_REG_IRQENA_OUTPUT_RDY);
	FUNC11(dd, FUNC2(dd),
			     SHA_REG_MASK_IT_EN |
				     (dma ? SHA_REG_MASK_DMA_EN : 0),
			     SHA_REG_MASK_IT_EN | SHA_REG_MASK_DMA_EN);
}