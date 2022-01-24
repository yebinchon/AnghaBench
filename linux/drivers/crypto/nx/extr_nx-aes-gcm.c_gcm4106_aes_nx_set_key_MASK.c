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
struct TYPE_3__ {char* nonce; } ;
struct TYPE_4__ {TYPE_1__ gcm; } ;
struct nx_crypto_ctx {TYPE_2__ priv; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct nx_crypto_ctx* FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(struct crypto_aead *tfm,
				  const u8           *in_key,
				  unsigned int        key_len)
{
	struct nx_crypto_ctx *nx_ctx = FUNC0(tfm);
	char *nonce = nx_ctx->priv.gcm.nonce;
	int rc;

	if (key_len < 4)
		return -EINVAL;

	key_len -= 4;

	rc = FUNC1(tfm, in_key, key_len);
	if (rc)
		goto out;

	FUNC2(nonce, in_key + key_len, 4);
out:
	return rc;
}