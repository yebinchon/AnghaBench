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
struct virtio_crypto_ablkcipher_ctx {int /*<<< orphan*/ * vcrypto; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 struct virtio_crypto_ablkcipher_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_crypto_ablkcipher_ctx*,int) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct virtio_crypto_ablkcipher_ctx *ctx = FUNC0(tfm);

	if (!ctx->vcrypto)
		return;

	FUNC2(ctx, 1);
	FUNC2(ctx, 0);
	FUNC1(ctx->vcrypto);
	ctx->vcrypto = NULL;
}