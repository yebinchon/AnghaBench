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
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  nonce; } ;
struct TYPE_4__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;

/* Variables and functions */
 unsigned int CTR_RFC3686_NONCE_SIZE ; 
 int EINVAL ; 
 int FUNC0 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ablkcipher*) ; 
 struct ccp_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_ablkcipher *tfm, const u8 *key,
				  unsigned int key_len)
{
	struct ccp_ctx *ctx = FUNC2(FUNC1(tfm));

	if (key_len < CTR_RFC3686_NONCE_SIZE)
		return -EINVAL;

	key_len -= CTR_RFC3686_NONCE_SIZE;
	FUNC3(ctx->u.aes.nonce, key + key_len, CTR_RFC3686_NONCE_SIZE);

	return FUNC0(tfm, key, key_len);
}