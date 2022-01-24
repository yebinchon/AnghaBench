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
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  aead; } ;
struct crypto4xx_ctx {TYPE_1__ sw_cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto4xx_ctx*) ; 
 struct crypto4xx_ctx* FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct crypto_aead *tfm)
{
	struct crypto4xx_ctx *ctx = FUNC1(tfm);

	FUNC0(ctx);
	FUNC2(ctx->sw_cipher.aead);
}