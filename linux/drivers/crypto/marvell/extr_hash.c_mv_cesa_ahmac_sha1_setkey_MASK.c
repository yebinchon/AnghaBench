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
struct sha1_state {int /*<<< orphan*/ * state; } ;
struct mv_cesa_hmac_ctx {void** iv; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ahash*) ; 
 struct mv_cesa_hmac_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/  const*,unsigned int,struct sha1_state*,struct sha1_state*) ; 

__attribute__((used)) static int FUNC5(struct crypto_ahash *tfm, const u8 *key,
				     unsigned int keylen)
{
	struct mv_cesa_hmac_ctx *ctx = FUNC3(FUNC2(tfm));
	struct sha1_state istate, ostate;
	int ret, i;

	ret = FUNC4("mv-sha1", key, keylen, &istate, &ostate);
	if (ret)
		return ret;

	for (i = 0; i < FUNC0(istate.state); i++)
		ctx->iv[i] = FUNC1(istate.state[i]);

	for (i = 0; i < FUNC0(ostate.state); i++)
		ctx->iv[i + 8] = FUNC1(ostate.state[i]);

	return 0;
}