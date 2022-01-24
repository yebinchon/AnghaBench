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
struct crypto_authenc_keys {scalar_t__ enckeylen; int /*<<< orphan*/  enckey; } ;
struct crypto_aead {int dummy; } ;
typedef  int /*<<< orphan*/  keys ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 scalar_t__ DES3_EDE_KEY_SIZE ; 
 int EINVAL ; 
 int FUNC0 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*) ; 
 int FUNC3 (struct crypto_authenc_keys*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_authenc_keys*,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct crypto_aead *aead, const u8 *key,
			    unsigned int keylen)
{
	struct crypto_authenc_keys keys;
	int err;

	err = FUNC3(&keys, key, keylen);
	if (FUNC6(err))
		goto badkey;

	err = -EINVAL;
	if (keys.enckeylen != DES3_EDE_KEY_SIZE)
		goto badkey;

	err = FUNC4(FUNC2(aead), keys.enckey) ?:
	      FUNC0(aead, key, keylen);

out:
	FUNC5(&keys, sizeof(keys));
	return err;

badkey:
	FUNC1(aead, CRYPTO_TFM_RES_BAD_KEY_LEN);
	goto out;
}