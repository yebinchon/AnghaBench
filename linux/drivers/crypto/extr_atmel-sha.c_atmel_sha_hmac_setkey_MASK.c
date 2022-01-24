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
struct crypto_ahash {int dummy; } ;
struct atmel_sha_hmac_ctx {int /*<<< orphan*/  hkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 struct atmel_sha_hmac_ctx* FUNC1 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct crypto_ahash *tfm, const u8 *key,
				 unsigned int keylen)
{
	struct atmel_sha_hmac_ctx *hmac = FUNC1(tfm);

	if (FUNC0(&hmac->hkey, key, keylen)) {
		FUNC2(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	return 0;
}