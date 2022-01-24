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
struct crypto_authenc_keys {int /*<<< orphan*/  enckeylen; int /*<<< orphan*/  enckey; } ;
struct crypto_aead {int dummy; } ;
typedef  int /*<<< orphan*/  keys ;

/* Variables and functions */
 int FUNC0 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC1 (struct crypto_authenc_keys*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_authenc_keys*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct crypto_aead*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct crypto_aead *aead, const u8 *key,
			    unsigned int keylen)
{
	struct crypto_authenc_keys keys;
	int err;

	err = FUNC1(&keys, key, keylen);
	if (FUNC3(err))
		return err;

	err = FUNC4(aead, keys.enckey, keys.enckeylen) ?:
	      FUNC0(aead, key, keylen);

	FUNC2(&keys, sizeof(keys));
	return err;
}