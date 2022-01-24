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
typedef  int /*<<< orphan*/  u32 ;
struct cvm_enc_ctx {int /*<<< orphan*/  enc_key; int /*<<< orphan*/  cipher_type; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC1 (struct crypto_ablkcipher*) ; 
 struct cvm_enc_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (struct cvm_enc_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct crypto_ablkcipher *cipher, const u8 *key,
		      u32 keylen, u8 cipher_type)
{
	struct crypto_tfm *tfm = FUNC1(cipher);
	struct cvm_enc_ctx *ctx = FUNC2(tfm);

	ctx->cipher_type = cipher_type;
	if (!FUNC3(ctx, keylen)) {
		FUNC4(ctx->enc_key, key, keylen);
		return 0;
	} else {
		FUNC0(cipher,
					    CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}
}