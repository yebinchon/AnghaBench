#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iproc_ctx_s {TYPE_1__* shash; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int /*<<< orphan*/  result; } ;
struct TYPE_3__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int FUNC0 (struct ahash_request*) ; 
 struct iproc_ctx_s* FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct iproc_ctx_s*) ; 

__attribute__((used)) static int FUNC7(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC2(req);
	struct iproc_ctx_s *ctx = FUNC1(tfm);
	int ret;

	if (FUNC6(ctx)) {
		/*
		 * If we get an incremental hashing request and it's not
		 * supported by the hardware, we need to handle it in software
		 * by calling synchronous hash functions.
		 */
		ret = FUNC4(ctx->shash, req->result);

		/* Done with hash, can deallocate it now */
		FUNC3(ctx->shash->tfm);
		FUNC5(ctx->shash);

	} else {
		/* Otherwise call the internal function which uses SPU hw */
		ret = FUNC0(req);
	}

	return ret;
}