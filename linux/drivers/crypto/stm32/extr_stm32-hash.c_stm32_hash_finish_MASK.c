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
struct stm32_hash_request_ctx {int /*<<< orphan*/  digcnt; int /*<<< orphan*/  digest; } ;
struct ahash_request {int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int EINVAL ; 
 struct stm32_hash_request_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ahash_request *req)
{
	struct stm32_hash_request_ctx *rctx = FUNC0(req);

	if (!req->result)
		return -EINVAL;

	FUNC1(req->result, rctx->digest, rctx->digcnt);

	return 0;
}