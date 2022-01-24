#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {TYPE_1__ u; } ;
struct TYPE_5__ {int /*<<< orphan*/  key2; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct flexi_crypto_context {TYPE_3__ auth; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC1 (struct crypto_skcipher*) ; 
 struct nitrox_crypto_ctx* FUNC2 (struct crypto_tfm*) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC5 (struct crypto_skcipher*,int,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC6 (struct crypto_tfm*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct crypto_skcipher *cipher,
				 const u8 *key, unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC1(cipher);
	struct nitrox_crypto_ctx *nctx = FUNC2(tfm);
	struct flexi_crypto_context *fctx;
	int aes_keylen, ret;

	ret = FUNC6(tfm, key, keylen);
	if (ret)
		return ret;

	keylen /= 2;

	aes_keylen = FUNC3(keylen);
	if (aes_keylen < 0) {
		FUNC0(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	fctx = nctx->u.fctx;
	/* copy KEY2 */
	FUNC4(fctx->auth.u.key2, (key + keylen), keylen);

	return FUNC5(cipher, aes_keylen, key, keylen);
}