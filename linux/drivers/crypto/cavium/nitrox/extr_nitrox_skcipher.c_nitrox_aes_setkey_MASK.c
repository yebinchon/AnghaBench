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
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct crypto_skcipher*,int,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_skcipher *cipher, const u8 *key,
			     unsigned int keylen)
{
	int aes_keylen;

	aes_keylen = FUNC1(keylen);
	if (aes_keylen < 0) {
		FUNC0(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}
	return FUNC2(cipher, aes_keylen, key, keylen);
}