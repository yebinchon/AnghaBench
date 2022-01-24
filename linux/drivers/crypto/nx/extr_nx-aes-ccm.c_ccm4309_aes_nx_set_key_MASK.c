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
struct TYPE_4__ {TYPE_1__ ccm; } ;
struct nx_crypto_ctx {TYPE_2__ priv; } ;
struct crypto_aead {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct nx_crypto_ctx* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(struct crypto_aead *tfm,
				  const u8           *in_key,
				  unsigned int        key_len)
{
	struct nx_crypto_ctx *nx_ctx = FUNC1(&tfm->base);

	if (key_len < 3)
		return -EINVAL;

	key_len -= 3;

	FUNC2(nx_ctx->priv.ccm.nonce, in_key + key_len, 3);

	return FUNC0(tfm, in_key, key_len);
}