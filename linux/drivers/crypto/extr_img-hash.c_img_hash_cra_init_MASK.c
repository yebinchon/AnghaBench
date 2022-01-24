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
struct img_hash_request_ctx {int dummy; } ;
struct img_hash_ctx {int /*<<< orphan*/  fallback; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 int ENOMEM ; 
 scalar_t__ IMG_HASH_DMA_THRESHOLD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct img_hash_ctx* FUNC6 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct crypto_tfm *tfm, const char *alg_name)
{
	struct img_hash_ctx *ctx = FUNC6(tfm);
	int err = -ENOMEM;

	ctx->fallback = FUNC5(alg_name, 0,
					   CRYPTO_ALG_NEED_FALLBACK);
	if (FUNC0(ctx->fallback)) {
		FUNC7("img_hash: Could not load fallback driver.\n");
		err = FUNC1(ctx->fallback);
		goto err;
	}
	FUNC4(FUNC2(tfm),
				 sizeof(struct img_hash_request_ctx) +
				 FUNC3(ctx->fallback) +
				 IMG_HASH_DMA_THRESHOLD);

	return 0;

err:
	return err;
}