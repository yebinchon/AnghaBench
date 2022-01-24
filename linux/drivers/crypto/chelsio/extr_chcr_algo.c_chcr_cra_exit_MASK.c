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
struct crypto_tfm {int dummy; } ;
struct chcr_context {int dummy; } ;
struct ablk_ctx {int /*<<< orphan*/  sw_cipher; } ;

/* Variables and functions */
 struct ablk_ctx* FUNC0 (struct chcr_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct chcr_context* FUNC2 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct chcr_context *ctx = FUNC2(tfm);
	struct ablk_ctx *ablkctx = FUNC0(ctx);

	FUNC1(ablkctx->sw_cipher);
}