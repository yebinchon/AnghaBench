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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_hash_dev {int /*<<< orphan*/  req; } ;
struct stm32_hash_ctx {int keylen; void* key; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  HASH_DIN ; 
 int /*<<< orphan*/  HASH_STR ; 
 int /*<<< orphan*/  HASH_STR_DCAL ; 
 struct stm32_hash_ctx* FUNC0 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_hash_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_hash_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_hash_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct stm32_hash_dev *hdev)
{
	struct crypto_ahash *tfm = FUNC1(hdev->req);
	struct stm32_hash_ctx *ctx = FUNC0(tfm);
	u32 reg;
	int keylen = ctx->keylen;
	void *key = ctx->key;

	if (keylen) {
		FUNC3(hdev, keylen);

		while (keylen > 0) {
			FUNC4(hdev, HASH_DIN, *(u32 *)key);
			keylen -= 4;
			key += 4;
		}

		reg = FUNC2(hdev, HASH_STR);
		reg |= HASH_STR_DCAL;
		FUNC4(hdev, HASH_STR, reg);

		return -EINPROGRESS;
	}

	return 0;
}