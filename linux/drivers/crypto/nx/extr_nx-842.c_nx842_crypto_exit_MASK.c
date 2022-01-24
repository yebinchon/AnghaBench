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
struct nx842_crypto_ctx {scalar_t__ dbounce; scalar_t__ sbounce; int /*<<< orphan*/  wmem; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 struct nx842_crypto_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct crypto_tfm *tfm)
{
	struct nx842_crypto_ctx *ctx = FUNC0(tfm);

	FUNC2(ctx->wmem);
	FUNC1((unsigned long)ctx->sbounce);
	FUNC1((unsigned long)ctx->dbounce);
}