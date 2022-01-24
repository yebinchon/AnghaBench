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
struct caam_rsa_key {int dummy; } ;
struct caam_rsa_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/  padding_dma; struct caam_rsa_key key; } ;

/* Variables and functions */
 scalar_t__ CAAM_RSA_MAX_INPUT_SIZE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct caam_rsa_ctx* FUNC0 (struct crypto_akcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct caam_rsa_key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct crypto_akcipher *tfm)
{
	struct caam_rsa_ctx *ctx = FUNC0(tfm);
	struct caam_rsa_key *key = &ctx->key;

	FUNC3(ctx->dev, ctx->padding_dma, CAAM_RSA_MAX_INPUT_SIZE -
			 1, DMA_TO_DEVICE);
	FUNC2(key);
	FUNC1(ctx->dev);
}