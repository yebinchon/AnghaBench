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
typedef  scalar_t__ u32 ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 scalar_t__ CTR_RFC3686_NONCE_SIZE ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct crypto_skcipher *skcipher,
				   const u8 *key, unsigned int keylen)
{
	u32 ctx1_iv_off;
	int err;

	/*
	 * RFC3686 specific:
	 *	| CONTEXT1[255:128] = {NONCE, IV, COUNTER}
	 *	| *key = {KEY, NONCE}
	 */
	ctx1_iv_off = 16 + CTR_RFC3686_NONCE_SIZE;
	keylen -= CTR_RFC3686_NONCE_SIZE;

	err = FUNC0(keylen);
	if (err) {
		FUNC1(skcipher,
					  CRYPTO_TFM_RES_BAD_KEY_LEN);
		return err;
	}

	return FUNC2(skcipher, key, keylen, ctx1_iv_off);
}