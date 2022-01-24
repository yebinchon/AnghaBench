#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_4__ {void* npe_mode; } ;
struct ixp_ctx {int /*<<< orphan*/  completion; int /*<<< orphan*/  configuring; TYPE_2__ decrypt; TYPE_2__ encrypt; } ;
struct TYPE_3__ {int crt_flags; } ;
struct crypto_ablkcipher {TYPE_1__ base; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ; 
 int CRYPTO_TFM_RES_WEAK_KEY ; 
 int EINVAL ; 
 void* NPE_OP_HMAC_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ixp_ctx* FUNC2 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_1__*,int,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct crypto_ablkcipher *tfm, const u8 *key,
			unsigned int key_len)
{
	struct ixp_ctx *ctx = FUNC2(tfm);
	u32 *flags = &tfm->base.crt_flags;
	int ret;

	FUNC3(&ctx->completion);
	FUNC1(&ctx->configuring);

	FUNC4(&ctx->encrypt);
	FUNC4(&ctx->decrypt);

	ctx->encrypt.npe_mode = NPE_OP_HMAC_DISABLE;
	ctx->decrypt.npe_mode = NPE_OP_HMAC_DISABLE;

	ret = FUNC5(&tfm->base, 0, key, key_len);
	if (ret)
		goto out;
	ret = FUNC5(&tfm->base, 1, key, key_len);
	if (ret)
		goto out;

	if (*flags & CRYPTO_TFM_RES_WEAK_KEY) {
		if (*flags & CRYPTO_TFM_REQ_FORBID_WEAK_KEYS) {
			ret = -EINVAL;
		} else {
			*flags &= ~CRYPTO_TFM_RES_WEAK_KEY;
		}
	}
out:
	if (!FUNC0(&ctx->configuring))
		FUNC6(&ctx->completion);
	return ret;
}