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
struct safexcel_cipher_ctx {int /*<<< orphan*/  mode; int /*<<< orphan*/  alg; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_CONTROL_CRYPTO_MODE_OFB ; 
 int /*<<< orphan*/  SAFEXCEL_AES ; 
 struct safexcel_cipher_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm)
{
	struct safexcel_cipher_ctx *ctx = FUNC0(tfm);

	FUNC1(tfm);
	ctx->alg  = SAFEXCEL_AES;
	ctx->mode = CONTEXT_CONTROL_CRYPTO_MODE_OFB;
	return 0;
}