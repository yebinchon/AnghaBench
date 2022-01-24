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
struct spacc_aead_ctx {int /*<<< orphan*/  sw_cipher; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 struct spacc_aead_ctx* FUNC0 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct crypto_aead *tfm)
{
	struct spacc_aead_ctx *ctx = FUNC0(tfm);

	FUNC1(ctx->sw_cipher);
}