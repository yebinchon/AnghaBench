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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cipher; } ;
struct crypto4xx_ctx {TYPE_1__ sw_cipher; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_skcipher*,int) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct crypto4xx_ctx *ctx,
				       struct crypto_skcipher *cipher,
				       const u8 *key,
				       unsigned int keylen)
{
	int rc;

	FUNC3(ctx->sw_cipher.cipher,
				    CRYPTO_TFM_REQ_MASK);
	FUNC5(ctx->sw_cipher.cipher,
		FUNC1(cipher) & CRYPTO_TFM_REQ_MASK);
	rc = FUNC6(ctx->sw_cipher.cipher, key, keylen);
	FUNC0(cipher, CRYPTO_TFM_RES_MASK);
	FUNC2(cipher,
		FUNC4(ctx->sw_cipher.cipher) &
			CRYPTO_TFM_RES_MASK);

	return rc;
}