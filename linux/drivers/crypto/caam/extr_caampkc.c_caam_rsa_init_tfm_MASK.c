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
struct crypto_akcipher {int dummy; } ;
struct caam_rsa_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/  padding_dma; } ;

/* Variables and functions */
 scalar_t__ CAAM_RSA_MAX_INPUT_SIZE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct caam_rsa_ctx* FUNC2 (struct crypto_akcipher*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  zero_buffer ; 

__attribute__((used)) static int FUNC9(struct crypto_akcipher *tfm)
{
	struct caam_rsa_ctx *ctx = FUNC2(tfm);

	ctx->dev = FUNC3();

	if (FUNC0(ctx->dev)) {
		FUNC8("Job Ring Device allocation for transform failed\n");
		return FUNC1(ctx->dev);
	}

	ctx->padding_dma = FUNC6(ctx->dev, zero_buffer,
					  CAAM_RSA_MAX_INPUT_SIZE - 1,
					  DMA_TO_DEVICE);
	if (FUNC7(ctx->dev, ctx->padding_dma)) {
		FUNC5(ctx->dev, "unable to map padding\n");
		FUNC4(ctx->dev);
		return -ENOMEM;
	}

	return 0;
}