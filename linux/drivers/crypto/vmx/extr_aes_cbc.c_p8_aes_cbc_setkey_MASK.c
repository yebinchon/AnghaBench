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
struct p8_aes_cbc_ctx {int /*<<< orphan*/  fallback; int /*<<< orphan*/  dec_key; int /*<<< orphan*/  enc_key; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 struct p8_aes_cbc_ctx* FUNC2 (struct crypto_skcipher*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct crypto_skcipher *tfm, const u8 *key,
			     unsigned int keylen)
{
	struct p8_aes_cbc_ctx *ctx = FUNC2(tfm);
	int ret;

	FUNC8();
	FUNC6();
	FUNC5();
	ret = FUNC1(key, keylen * 8, &ctx->enc_key);
	ret |= FUNC0(key, keylen * 8, &ctx->dec_key);
	FUNC4();
	FUNC7();
	FUNC9();

	ret |= FUNC3(ctx->fallback, key, keylen);

	return ret ? -EINVAL : 0;
}