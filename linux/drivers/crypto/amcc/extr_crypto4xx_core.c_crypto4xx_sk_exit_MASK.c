#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct crypto_skcipher {int dummy; } ;
struct TYPE_2__ {scalar_t__ cipher; } ;
struct crypto4xx_ctx {TYPE_1__ sw_cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto4xx_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct crypto4xx_ctx* FUNC2 (struct crypto_skcipher*) ; 

__attribute__((used)) static void FUNC3(struct crypto_skcipher *sk)
{
	struct crypto4xx_ctx *ctx =  FUNC2(sk);

	FUNC0(ctx);
	if (ctx->sw_cipher.cipher)
		FUNC1(ctx->sw_cipher.cipher);
}