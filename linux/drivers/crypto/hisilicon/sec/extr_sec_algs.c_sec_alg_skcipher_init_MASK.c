#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sec_request {int dummy; } ;
struct sec_alg_tfm_ctx {TYPE_1__* queue; int /*<<< orphan*/  backlog; int /*<<< orphan*/  lock; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_4__ {int havesoftqueue; int /*<<< orphan*/  queuelock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 struct sec_alg_tfm_ctx* FUNC3 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct crypto_skcipher *tfm)
{
	struct sec_alg_tfm_ctx *ctx = FUNC3(tfm);

	FUNC5(&ctx->lock);
	FUNC0(&ctx->backlog);
	FUNC4(tfm, sizeof(struct sec_request));

	ctx->queue = FUNC6();
	if (FUNC1(ctx->queue))
		return FUNC2(ctx->queue);

	FUNC5(&ctx->queue->queuelock);
	ctx->queue->havesoftqueue = false;

	return 0;
}