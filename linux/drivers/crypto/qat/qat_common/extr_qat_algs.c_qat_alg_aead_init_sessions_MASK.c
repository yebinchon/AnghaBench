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
struct crypto_authenc_keys {int /*<<< orphan*/  enckeylen; } ;
struct crypto_aead {int dummy; } ;
typedef  int /*<<< orphan*/  keys ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct crypto_authenc_keys*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_authenc_keys*,int) ; 
 scalar_t__ FUNC3 (struct crypto_aead*,int,struct crypto_authenc_keys*,int) ; 
 scalar_t__ FUNC4 (struct crypto_aead*,int,struct crypto_authenc_keys*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC6(struct crypto_aead *tfm, const u8 *key,
				      unsigned int keylen,  int mode)
{
	struct crypto_authenc_keys keys;
	int alg;

	if (FUNC1(&keys, key, keylen))
		goto bad_key;

	if (FUNC5(keys.enckeylen, &alg, mode))
		goto bad_key;

	if (FUNC4(tfm, alg, &keys, mode))
		goto error;

	if (FUNC3(tfm, alg, &keys, mode))
		goto error;

	FUNC2(&keys, sizeof(keys));
	return 0;
bad_key:
	FUNC0(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
	FUNC2(&keys, sizeof(keys));
	return -EINVAL;
error:
	FUNC2(&keys, sizeof(keys));
	return -EFAULT;
}