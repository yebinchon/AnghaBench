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
typedef  int /*<<< orphan*/  u64 ;
struct p8_ghash_ctx {int /*<<< orphan*/  key; int /*<<< orphan*/  htable; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int GHASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_shash*) ; 
 struct p8_ghash_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct crypto_shash *tfm, const u8 *key,
			   unsigned int keylen)
{
	struct p8_ghash_ctx *ctx = FUNC1(FUNC0(tfm));

	if (keylen != GHASH_BLOCK_SIZE)
		return -EINVAL;

	FUNC8();
	FUNC6();
	FUNC3();
	FUNC4(ctx->htable, (const u64 *) key);
	FUNC2();
	FUNC7();
	FUNC9();

	FUNC5(&ctx->key, key, GHASH_BLOCK_SIZE);

	return 0;
}