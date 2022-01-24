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
struct talitos_ahash_req_ctx {int last; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 struct talitos_ahash_req_ctx* FUNC1 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC2(struct ahash_request *areq)
{
	struct talitos_ahash_req_ctx *req_ctx = FUNC1(areq);

	req_ctx->last = 1;

	return FUNC0(areq, 0);
}