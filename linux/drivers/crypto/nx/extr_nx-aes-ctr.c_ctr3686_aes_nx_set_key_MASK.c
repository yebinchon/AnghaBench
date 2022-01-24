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
struct TYPE_3__ {int /*<<< orphan*/  nonce; } ;
struct TYPE_4__ {TYPE_1__ ctr; } ;
struct nx_crypto_ctx {TYPE_2__ priv; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 unsigned int CTR_RFC3686_NONCE_SIZE ; 
 int EINVAL ; 
 struct nx_crypto_ctx* FUNC0 (struct crypto_tfm*) ; 
 int FUNC1 (struct crypto_tfm*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm,
				  const u8          *in_key,
				  unsigned int       key_len)
{
	struct nx_crypto_ctx *nx_ctx = FUNC0(tfm);

	if (key_len < CTR_RFC3686_NONCE_SIZE)
		return -EINVAL;

	FUNC2(nx_ctx->priv.ctr.nonce,
	       in_key + key_len - CTR_RFC3686_NONCE_SIZE,
	       CTR_RFC3686_NONCE_SIZE);

	key_len -= CTR_RFC3686_NONCE_SIZE;

	return FUNC1(tfm, in_key, key_len);
}