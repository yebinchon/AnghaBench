#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {struct crypto_ahash* fallback_tfm; } ;
struct n2_hmac_ctx {unsigned int hash_key_len; int /*<<< orphan*/  hash_key; TYPE_1__ base; struct crypto_shash* child_shash; } ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_6__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int N2_HASH_KEY_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct crypto_shash*) ; 
 struct n2_hmac_ctx* FUNC2 (struct crypto_ahash*) ; 
 int FUNC3 (struct crypto_ahash*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC4 (struct crypto_shash*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 TYPE_2__* shash ; 

__attribute__((used)) static int FUNC8(struct crypto_ahash *tfm, const u8 *key,
				unsigned int keylen)
{
	struct n2_hmac_ctx *ctx = FUNC2(tfm);
	struct crypto_shash *child_shash = ctx->child_shash;
	struct crypto_ahash *fallback_tfm;
	FUNC1(shash, child_shash);
	int err, bs, ds;

	fallback_tfm = ctx->base.fallback_tfm;
	err = FUNC3(fallback_tfm, key, keylen);
	if (err)
		return err;

	shash->tfm = child_shash;

	bs = FUNC4(child_shash);
	ds = FUNC6(child_shash);
	FUNC0(ds > N2_HASH_KEY_MAX);
	if (keylen > bs) {
		err = FUNC5(shash, key, keylen,
					  ctx->hash_key);
		if (err)
			return err;
		keylen = ds;
	} else if (keylen <= N2_HASH_KEY_MAX)
		FUNC7(ctx->hash_key, key, keylen);

	ctx->hash_key_len = keylen;

	return err;
}