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
struct rk_crypto_info {int dummy; } ;
struct rk_cipher_ctx {int mode; struct rk_crypto_info* dev; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int RK_CRYPTO_AES_ECB_MODE ; 
 int RK_CRYPTO_DEC ; 
 struct rk_cipher_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC1 (struct ablkcipher_request*) ; 
 int FUNC2 (struct rk_crypto_info*,struct ablkcipher_request*) ; 

__attribute__((used)) static int FUNC3(struct ablkcipher_request *req)
{
	struct crypto_ablkcipher *tfm = FUNC1(req);
	struct rk_cipher_ctx *ctx = FUNC0(tfm);
	struct rk_crypto_info *dev = ctx->dev;

	ctx->mode = RK_CRYPTO_AES_ECB_MODE | RK_CRYPTO_DEC;
	return FUNC2(dev, req);
}