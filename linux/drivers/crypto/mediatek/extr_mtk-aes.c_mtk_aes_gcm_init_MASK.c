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
struct mtk_aes_reqctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct mtk_aes_gcm_ctx {TYPE_1__ base; int /*<<< orphan*/  ctr; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct mtk_aes_gcm_ctx* FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_aes_gcm_start ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct crypto_aead *aead)
{
	struct mtk_aes_gcm_ctx *ctx = FUNC2(aead);

	ctx->ctr = FUNC4("ctr(aes)", 0,
					 CRYPTO_ALG_ASYNC);
	if (FUNC0(ctx->ctr)) {
		FUNC5("Error allocating ctr(aes)\n");
		return FUNC1(ctx->ctr);
	}

	FUNC3(aead, sizeof(struct mtk_aes_reqctx));
	ctx->base.start = mtk_aes_gcm_start;
	return 0;
}