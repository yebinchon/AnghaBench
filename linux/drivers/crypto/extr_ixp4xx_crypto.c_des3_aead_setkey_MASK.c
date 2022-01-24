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
struct ixp_ctx {int authkey_len; int enckey_len; int /*<<< orphan*/  enckey; int /*<<< orphan*/  authkey; } ;
struct crypto_authenc_keys {int authkeylen; int enckeylen; int /*<<< orphan*/  enckey; int /*<<< orphan*/  authkey; } ;
struct crypto_aead {int dummy; } ;
typedef  int /*<<< orphan*/  keys ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 struct ixp_ctx* FUNC2 (struct crypto_aead*) ; 
 int FUNC3 (struct crypto_authenc_keys*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_authenc_keys*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct crypto_aead*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct crypto_aead *tfm, const u8 *key,
			    unsigned int keylen)
{
	struct ixp_ctx *ctx = FUNC2(tfm);
	struct crypto_authenc_keys keys;
	int err;

	err = FUNC3(&keys, key, keylen);
	if (FUNC6(err))
		goto badkey;

	err = -EINVAL;
	if (keys.authkeylen > sizeof(ctx->authkey))
		goto badkey;

	err = FUNC7(tfm, keys.enckey, keys.enckeylen);
	if (err)
		goto badkey;

	FUNC4(ctx->authkey, keys.authkey, keys.authkeylen);
	FUNC4(ctx->enckey, keys.enckey, keys.enckeylen);
	ctx->authkey_len = keys.authkeylen;
	ctx->enckey_len = keys.enckeylen;

	FUNC5(&keys, sizeof(keys));
	return FUNC0(tfm, FUNC1(tfm));
badkey:
	FUNC5(&keys, sizeof(keys));
	return err;
}