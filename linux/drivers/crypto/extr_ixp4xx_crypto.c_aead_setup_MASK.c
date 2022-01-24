#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ixp_ctx {int /*<<< orphan*/  completion; int /*<<< orphan*/  configuring; int /*<<< orphan*/  authkey_len; int /*<<< orphan*/  authkey; int /*<<< orphan*/  enckey_len; int /*<<< orphan*/  enckey; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; } ;
struct TYPE_3__ {int crt_flags; } ;
struct crypto_aead {TYPE_1__ base; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ; 
 int CRYPTO_TFM_RES_WEAK_KEY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ixp_ctx* FUNC2 (struct crypto_aead*) ; 
 unsigned int FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct crypto_aead *tfm, unsigned int authsize)
{
	struct ixp_ctx *ctx = FUNC2(tfm);
	u32 *flags = &tfm->base.crt_flags;
	unsigned digest_len = FUNC3(tfm);
	int ret;

	if (!ctx->enckey_len && !ctx->authkey_len)
		return 0;
	FUNC4(&ctx->completion);
	FUNC1(&ctx->configuring);

	FUNC5(&ctx->encrypt);
	FUNC5(&ctx->decrypt);

	ret = FUNC7(&tfm->base, 0, ctx->enckey, ctx->enckey_len);
	if (ret)
		goto out;
	ret = FUNC7(&tfm->base, 1, ctx->enckey, ctx->enckey_len);
	if (ret)
		goto out;
	ret = FUNC6(&tfm->base, 0, authsize, ctx->authkey,
			ctx->authkey_len, digest_len);
	if (ret)
		goto out;
	ret = FUNC6(&tfm->base, 1, authsize,  ctx->authkey,
			ctx->authkey_len, digest_len);
	if (ret)
		goto out;

	if (*flags & CRYPTO_TFM_RES_WEAK_KEY) {
		if (*flags & CRYPTO_TFM_REQ_FORBID_WEAK_KEYS) {
			ret = -EINVAL;
			goto out;
		} else {
			*flags &= ~CRYPTO_TFM_RES_WEAK_KEY;
		}
	}
out:
	if (!FUNC0(&ctx->configuring))
		FUNC8(&ctx->completion);
	return ret;
}