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
struct crypto_aead {int dummy; } ;
struct cc_aead_ctx {int /*<<< orphan*/  ctr_nonce; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(struct crypto_aead *tfm, const u8 *key,
				 unsigned int keylen)
{
	struct cc_aead_ctx *ctx = FUNC1(tfm);

	if (keylen < 3)
		return -EINVAL;

	keylen -= 3;
	FUNC2(ctx->ctr_nonce, key + keylen, 3);

	return FUNC0(tfm, key, keylen);
}