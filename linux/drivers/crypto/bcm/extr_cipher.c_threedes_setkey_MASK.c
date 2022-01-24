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
struct iproc_ctx_s {int /*<<< orphan*/  cipher_type; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIPHER_TYPE_3DES ; 
 struct iproc_ctx_s* FUNC0 (struct crypto_ablkcipher*) ; 
 int FUNC1 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(struct crypto_ablkcipher *cipher, const u8 *key,
			   unsigned int keylen)
{
	struct iproc_ctx_s *ctx = FUNC0(cipher);
	int err;

	err = FUNC1(cipher, key);
	if (err)
		return err;

	ctx->cipher_type = CIPHER_TYPE_3DES;
	return 0;
}