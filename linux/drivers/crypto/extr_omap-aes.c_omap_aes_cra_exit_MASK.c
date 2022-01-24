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
struct omap_aes_ctx {int /*<<< orphan*/ * fallback; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct omap_aes_ctx* FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC2(struct crypto_tfm *tfm)
{
	struct omap_aes_ctx *ctx = FUNC1(tfm);

	if (ctx->fallback)
		FUNC0(ctx->fallback);

	ctx->fallback = NULL;
}