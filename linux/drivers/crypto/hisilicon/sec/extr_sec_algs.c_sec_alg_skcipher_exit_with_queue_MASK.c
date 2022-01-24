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
struct sec_alg_tfm_ctx {TYPE_1__* queue; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  softqueue; } ;

/* Variables and functions */
 struct sec_alg_tfm_ctx* FUNC0 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*) ; 

__attribute__((used)) static void FUNC3(struct crypto_skcipher *tfm)
{
	struct sec_alg_tfm_ctx *ctx = FUNC0(tfm);

	FUNC1(&ctx->queue->softqueue);
	FUNC2(tfm);
}