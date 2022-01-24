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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {int /*<<< orphan*/  salt; struct crypto_aead* sw_cipher; scalar_t__ enckey_len; } ;

/* Variables and functions */
 struct chcr_aead_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CRYPTO_TFM_RES_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*,int) ; 
 int FUNC4 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_aead*,int) ; 
 int FUNC6 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_tfm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC9(struct crypto_aead *aead, const u8 *key,
				    unsigned int keylen)
{
	struct chcr_aead_ctx *aeadctx = FUNC0(FUNC1(aead));
	int error;

	if (keylen < 3) {
		FUNC7((struct crypto_tfm *)aead,
				     CRYPTO_TFM_RES_BAD_KEY_LEN);
		aeadctx->enckey_len = 0;
		return	-EINVAL;
	}
	FUNC3(aeadctx->sw_cipher, CRYPTO_TFM_REQ_MASK);
	FUNC5(aeadctx->sw_cipher, FUNC4(aead) &
			      CRYPTO_TFM_REQ_MASK);
	error = FUNC6(aeadctx->sw_cipher, key, keylen);
	FUNC3(aead, CRYPTO_TFM_RES_MASK);
	FUNC5(aead, FUNC4(aeadctx->sw_cipher) &
			      CRYPTO_TFM_RES_MASK);
	if (error)
		return error;
	keylen -= 3;
	FUNC8(aeadctx->salt, key + keylen, 3);
	return FUNC2(aead, key, keylen);
}