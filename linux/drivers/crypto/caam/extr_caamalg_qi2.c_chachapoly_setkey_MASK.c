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
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {unsigned int keylen; int /*<<< orphan*/  const* key_virt; } ;
struct caam_ctx {TYPE_1__ cdata; } ;

/* Variables and functions */
 unsigned int CHACHAPOLY_IV_SIZE ; 
 unsigned int CHACHA_KEY_SIZE ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int FUNC0 (struct crypto_aead*) ; 
 struct caam_ctx* FUNC1 (struct crypto_aead*) ; 
 unsigned int FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct crypto_aead *aead, const u8 *key,
			     unsigned int keylen)
{
	struct caam_ctx *ctx = FUNC1(aead);
	unsigned int ivsize = FUNC2(aead);
	unsigned int saltlen = CHACHAPOLY_IV_SIZE - ivsize;

	if (keylen != CHACHA_KEY_SIZE + saltlen) {
		FUNC3(aead, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	ctx->cdata.key_virt = key;
	ctx->cdata.keylen = keylen - saltlen;

	return FUNC0(aead);
}