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
struct crypto_kpp {int dummy; } ;
struct atmel_ecdh_ctx {scalar_t__ fallback; } ;

/* Variables and functions */
 unsigned int ATMEL_ECC_PUBKEY_SIZE ; 
 unsigned int FUNC0 (scalar_t__) ; 
 struct atmel_ecdh_ctx* FUNC1 (struct crypto_kpp*) ; 

__attribute__((used)) static unsigned int FUNC2(struct crypto_kpp *tfm)
{
	struct atmel_ecdh_ctx *ctx = FUNC1(tfm);

	if (ctx->fallback)
		return FUNC0(ctx->fallback);

	/*
	 * The device only supports NIST P256 ECC keys. The public key size will
	 * always be the same. Use a macro for the key size to avoid unnecessary
	 * computations.
	 */
	return ATMEL_ECC_PUBKEY_SIZE;
}