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
struct mv_cesa_des_ctx {int /*<<< orphan*/  key; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DES_KEY_SIZE ; 
 struct mv_cesa_des_ctx* FUNC0 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct crypto_skcipher*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(struct crypto_skcipher *cipher, const u8 *key,
			      unsigned int len)
{
	struct mv_cesa_des_ctx *ctx = FUNC0(cipher);
	int err;

	err = FUNC2(cipher, key);
	if (err)
		return err;

	FUNC1(ctx->key, key, DES_KEY_SIZE);

	return 0;
}