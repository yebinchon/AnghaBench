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
struct crypto_tfm {int crt_flags; } ;
struct TYPE_2__ {int crt_flags; } ;
struct crypto_ablkcipher {TYPE_1__ base; } ;
struct ablk_ctx {int /*<<< orphan*/  sw_cipher; } ;

/* Variables and functions */
 struct ablk_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ablkcipher*) ; 
 struct crypto_tfm* FUNC2 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct crypto_ablkcipher *cipher,
				       const u8 *key,
				       unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC2(cipher);
	struct ablk_ctx *ablkctx = FUNC0(FUNC1(cipher));
	int err = 0;

	FUNC3(ablkctx->sw_cipher,
				CRYPTO_TFM_REQ_MASK);
	FUNC5(ablkctx->sw_cipher,
				cipher->base.crt_flags & CRYPTO_TFM_REQ_MASK);
	err = FUNC6(ablkctx->sw_cipher, key, keylen);
	tfm->crt_flags &= ~CRYPTO_TFM_RES_MASK;
	tfm->crt_flags |=
		FUNC4(ablkctx->sw_cipher) &
		CRYPTO_TFM_RES_MASK;
	return err;
}