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
struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_ahash_req {int last_req; int /*<<< orphan*/  len; struct mv_cesa_op_ctx op_tmpl; } ;
struct ahash_request {scalar_t__ nbytes; } ;

/* Variables and functions */
 struct mv_cesa_ahash_req* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct mv_cesa_ahash_req *creq = FUNC0(req);
	struct mv_cesa_op_ctx *tmpl = &creq->op_tmpl;

	FUNC2(tmpl, creq->len);
	creq->last_req = true;
	req->nbytes = 0;

	return FUNC1(req);
}