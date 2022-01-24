#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_ahash {int /*<<< orphan*/  base; } ;
struct artpec6_hashalg_context {size_t hmac_key_length; int /*<<< orphan*/  hmac_key; int /*<<< orphan*/  child_hash; } ;
struct TYPE_4__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ahash*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 struct artpec6_hashalg_context* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* hdesc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 

__attribute__((used)) static int
FUNC8(struct crypto_ahash *tfm,
		    const u8 *key, unsigned int keylen)
{
	struct artpec6_hashalg_context *tfm_ctx = FUNC4(&tfm->base);
	size_t blocksize;
	int ret;

	if (!keylen) {
		FUNC7("Invalid length (%d) of HMAC key\n",
			keylen);
		return -EINVAL;
	}

	FUNC6(tfm_ctx->hmac_key, 0, sizeof(tfm_ctx->hmac_key));

	blocksize = FUNC3(FUNC1(tfm));

	if (keylen > blocksize) {
		FUNC0(hdesc, tfm_ctx->child_hash);

		hdesc->tfm = tfm_ctx->child_hash;

		tfm_ctx->hmac_key_length = blocksize;
		ret = FUNC2(hdesc, key, keylen,
					  tfm_ctx->hmac_key);
		if (ret)
			return ret;

	} else {
		FUNC5(tfm_ctx->hmac_key, key, keylen);
		tfm_ctx->hmac_key_length = keylen;
	}

	return 0;
}