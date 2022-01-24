#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_6__ {unsigned int key_len; int* key; int* ipad; int* opad; unsigned int opad_count; int /*<<< orphan*/  opad_sg; struct crypto_shash* hmac_tfm; } ;
struct TYPE_7__ {TYPE_1__ sha; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct TYPE_8__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int HMAC_IPAD_VALUE ; 
 int HMAC_OPAD_VALUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ahash*) ; 
 unsigned int FUNC3 (struct crypto_shash*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/  const*,unsigned int,int*) ; 
 unsigned int FUNC5 (struct crypto_shash*) ; 
 struct ccp_ctx* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* sdesc ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct crypto_ahash *tfm, const u8 *key,
			  unsigned int key_len)
{
	struct ccp_ctx *ctx = FUNC6(FUNC2(tfm));
	struct crypto_shash *shash = ctx->u.sha.hmac_tfm;

	FUNC0(sdesc, shash);

	unsigned int block_size = FUNC3(shash);
	unsigned int digest_size = FUNC5(shash);
	int i, ret;

	/* Set to zero until complete */
	ctx->u.sha.key_len = 0;

	/* Clear key area to provide zero padding for keys smaller
	 * than the block size
	 */
	FUNC8(ctx->u.sha.key, 0, sizeof(ctx->u.sha.key));

	if (key_len > block_size) {
		/* Must hash the input key */
		sdesc->tfm = shash;

		ret = FUNC4(sdesc, key, key_len,
					  ctx->u.sha.key);
		if (ret) {
			FUNC1(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
			return -EINVAL;
		}

		key_len = digest_size;
	} else {
		FUNC7(ctx->u.sha.key, key, key_len);
	}

	for (i = 0; i < block_size; i++) {
		ctx->u.sha.ipad[i] = ctx->u.sha.key[i] ^ HMAC_IPAD_VALUE;
		ctx->u.sha.opad[i] = ctx->u.sha.key[i] ^ HMAC_OPAD_VALUE;
	}

	FUNC9(&ctx->u.sha.opad_sg, ctx->u.sha.opad, block_size);
	ctx->u.sha.opad_count = block_size;

	ctx->u.sha.key_len = key_len;

	return 0;
}