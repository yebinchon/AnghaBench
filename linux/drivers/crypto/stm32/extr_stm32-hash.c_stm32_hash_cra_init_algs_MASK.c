#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stm32_hash_request_ctx {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * unprepare_request; int /*<<< orphan*/  prepare_request; int /*<<< orphan*/  do_one_request; } ;
struct TYPE_4__ {TYPE_1__ op; } ;
struct stm32_hash_ctx {TYPE_2__ enginectx; int /*<<< orphan*/  flags; scalar_t__ keylen; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_FLAGS_HMAC ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct stm32_hash_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  stm32_hash_one_request ; 
 int /*<<< orphan*/  stm32_hash_prepare_req ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm,
				    const char *algs_hmac_name)
{
	struct stm32_hash_ctx *ctx = FUNC2(tfm);

	FUNC1(FUNC0(tfm),
				 sizeof(struct stm32_hash_request_ctx));

	ctx->keylen = 0;

	if (algs_hmac_name)
		ctx->flags |= HASH_FLAGS_HMAC;

	ctx->enginectx.op.do_one_request = stm32_hash_one_request;
	ctx->enginectx.op.prepare_request = stm32_hash_prepare_req;
	ctx->enginectx.op.unprepare_request = NULL;
	return 0;
}