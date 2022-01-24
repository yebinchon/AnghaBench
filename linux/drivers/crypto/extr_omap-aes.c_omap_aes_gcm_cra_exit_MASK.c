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
struct omap_aes_ctx {scalar_t__ ctr; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 struct omap_aes_ctx* FUNC0 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct crypto_aead *tfm)
{
	struct omap_aes_ctx *ctx = FUNC0(tfm);

	FUNC3(FUNC1(tfm));

	if (ctx->ctr)
		FUNC2(ctx->ctr);
}