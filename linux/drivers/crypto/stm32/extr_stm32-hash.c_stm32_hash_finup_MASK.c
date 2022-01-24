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
struct stm32_hash_request_ctx {int /*<<< orphan*/  flags; } ;
struct stm32_hash_dev {scalar_t__ dma_lch; } ;
struct stm32_hash_ctx {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  HASH_FLAGS_CPU ; 
 int /*<<< orphan*/  HASH_FLAGS_FINUP ; 
 struct stm32_hash_request_ctx* FUNC0 (struct ahash_request*) ; 
 struct stm32_hash_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 scalar_t__ FUNC3 (struct ahash_request*) ; 
 int FUNC4 (struct ahash_request*) ; 
 struct stm32_hash_dev* FUNC5 (struct stm32_hash_ctx*) ; 
 int FUNC6 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC7(struct ahash_request *req)
{
	struct stm32_hash_request_ctx *rctx = FUNC0(req);
	struct stm32_hash_ctx *ctx = FUNC1(FUNC2(req));
	struct stm32_hash_dev *hdev = FUNC5(ctx);
	int err1, err2;

	rctx->flags |= HASH_FLAGS_FINUP;

	if (hdev->dma_lch && FUNC3(req))
		rctx->flags &= ~HASH_FLAGS_CPU;

	err1 = FUNC6(req);

	if (err1 == -EINPROGRESS || err1 == -EBUSY)
		return err1;

	/*
	 * final() has to be always called to cleanup resources
	 * even if update() failed, except EINPROGRESS
	 */
	err2 = FUNC4(req);

	return err1 ?: err2;
}