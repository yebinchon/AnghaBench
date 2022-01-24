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
struct rsa_key {int /*<<< orphan*/  d_sz; int /*<<< orphan*/  d; int /*<<< orphan*/  e_sz; int /*<<< orphan*/  e; int /*<<< orphan*/  n_sz; int /*<<< orphan*/  n; } ;
struct crypto_akcipher {int dummy; } ;
struct TYPE_3__ {int n_len; int key_len; int e_len; int d_len; int /*<<< orphan*/  d_buf; int /*<<< orphan*/  d_sg; int /*<<< orphan*/  e_buf; int /*<<< orphan*/  e_sg; int /*<<< orphan*/  n_buf; int /*<<< orphan*/  n_sg; } ;
struct TYPE_4__ {TYPE_1__ rsa; } ;
struct ccp_ctx {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  raw_key ;

/* Variables and functions */
 int EINVAL ; 
 struct ccp_ctx* FUNC0 (struct crypto_akcipher*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ccp_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsa_key*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct rsa_key*,void const*,unsigned int) ; 
 int FUNC6 (struct rsa_key*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct crypto_akcipher *tfm, const void *key,
			  unsigned int keylen, bool private)
{
	struct ccp_ctx *ctx = FUNC0(tfm);
	struct rsa_key raw_key;
	int ret;

	FUNC3(ctx);
	FUNC4(&raw_key, 0, sizeof(raw_key));

	/* Code borrowed from crypto/rsa.c */
	if (private)
		ret = FUNC5(&raw_key, key, keylen);
	else
		ret = FUNC6(&raw_key, key, keylen);
	if (ret)
		goto n_key;

	ret = FUNC2(&ctx->u.rsa.n_buf, &ctx->u.rsa.n_len,
					raw_key.n, raw_key.n_sz);
	if (ret)
		goto key_err;
	FUNC7(&ctx->u.rsa.n_sg, ctx->u.rsa.n_buf, ctx->u.rsa.n_len);

	ctx->u.rsa.key_len = ctx->u.rsa.n_len << 3; /* convert to bits */
	if (FUNC1(ctx->u.rsa.key_len)) {
		ret = -EINVAL;
		goto key_err;
	}

	ret = FUNC2(&ctx->u.rsa.e_buf, &ctx->u.rsa.e_len,
					raw_key.e, raw_key.e_sz);
	if (ret)
		goto key_err;
	FUNC7(&ctx->u.rsa.e_sg, ctx->u.rsa.e_buf, ctx->u.rsa.e_len);

	if (private) {
		ret = FUNC2(&ctx->u.rsa.d_buf,
						&ctx->u.rsa.d_len,
						raw_key.d, raw_key.d_sz);
		if (ret)
			goto key_err;
		FUNC7(&ctx->u.rsa.d_sg,
			    ctx->u.rsa.d_buf, ctx->u.rsa.d_len);
	}

	return 0;

key_err:
	FUNC3(ctx);

n_key:
	return ret;
}