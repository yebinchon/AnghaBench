#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct hmac_ctx {int /*<<< orphan*/  const* opad; int /*<<< orphan*/  const* ipad; int /*<<< orphan*/  base_hash; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 struct hmac_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int IPAD_DATA ; 
 unsigned int OPAD_DATA ; 
 unsigned int SHA224_DIGEST_SIZE ; 
 unsigned int SHA256_DIGEST_SIZE ; 
 unsigned int SHA384_DIGEST_SIZE ; 
 unsigned int SHA512_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC4 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*) ; 
 unsigned int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/  const*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* shash ; 

__attribute__((used)) static int FUNC11(struct crypto_ahash *tfm, const u8 *key,
			     unsigned int keylen)
{
	struct hmac_ctx *hmacctx = FUNC0(FUNC8(tfm));
	unsigned int digestsize = FUNC4(tfm);
	unsigned int bs = FUNC7(FUNC5(tfm));
	unsigned int i, err = 0, updated_digestsize;

	FUNC1(shash, hmacctx->base_hash);

	/* use the key to calculate the ipad and opad. ipad will sent with the
	 * first request's data. opad will be sent with the final hash result
	 * ipad in hmacctx->ipad and opad in hmacctx->opad location
	 */
	shash->tfm = hmacctx->base_hash;
	if (keylen > bs) {
		err = FUNC6(shash, key, keylen,
					  hmacctx->ipad);
		if (err)
			goto out;
		keylen = digestsize;
	} else {
		FUNC9(hmacctx->ipad, key, keylen);
	}
	FUNC10(hmacctx->ipad + keylen, 0, bs - keylen);
	FUNC9(hmacctx->opad, hmacctx->ipad, bs);

	for (i = 0; i < bs / sizeof(int); i++) {
		*((unsigned int *)(&hmacctx->ipad) + i) ^= IPAD_DATA;
		*((unsigned int *)(&hmacctx->opad) + i) ^= OPAD_DATA;
	}

	updated_digestsize = digestsize;
	if (digestsize == SHA224_DIGEST_SIZE)
		updated_digestsize = SHA256_DIGEST_SIZE;
	else if (digestsize == SHA384_DIGEST_SIZE)
		updated_digestsize = SHA512_DIGEST_SIZE;
	err = FUNC3(shash, hmacctx->ipad,
					hmacctx->ipad, digestsize);
	if (err)
		goto out;
	FUNC2(hmacctx->ipad, updated_digestsize);

	err = FUNC3(shash, hmacctx->opad,
					hmacctx->opad, digestsize);
	if (err)
		goto out;
	FUNC2(hmacctx->opad, updated_digestsize);
out:
	return err;
}