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
struct TYPE_2__ {int havesoftqueue; int /*<<< orphan*/  softqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sec_alg_tfm_ctx* FUNC1 (struct crypto_skcipher*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*) ; 
 int FUNC4 (struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC5(struct crypto_skcipher *tfm)
{
	struct sec_alg_tfm_ctx *ctx = FUNC1(tfm);
	int ret;

	ret = FUNC4(tfm);
	if (ret)
		return ret;

	FUNC0(ctx->queue->softqueue);
	ret = FUNC2(&ctx->queue->softqueue, 512, GFP_KERNEL);
	if (ret) {
		FUNC3(tfm);
		return ret;
	}
	ctx->queue->havesoftqueue = true;

	return 0;
}