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
struct mv_cesa_hmac_ctx {void** iv; } ;
struct md5_state {int /*<<< orphan*/ * hash; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ahash*) ; 
 struct mv_cesa_hmac_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/  const*,unsigned int,struct md5_state*,struct md5_state*) ; 

__attribute__((used)) static int FUNC5(struct crypto_ahash *tfm, const u8 *key,
				    unsigned int keylen)
{
	struct mv_cesa_hmac_ctx *ctx = FUNC3(FUNC2(tfm));
	struct md5_state istate, ostate;
	int ret, i;

	ret = FUNC4("mv-md5", key, keylen, &istate, &ostate);
	if (ret)
		return ret;

	for (i = 0; i < FUNC0(istate.hash); i++)
		ctx->iv[i] = FUNC1(istate.hash[i]);

	for (i = 0; i < FUNC0(ostate.hash); i++)
		ctx->iv[i + 8] = FUNC1(ostate.hash[i]);

	return 0;
}