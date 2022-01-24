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
struct mv_cesa_ahash_req {int /*<<< orphan*/ * state; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_SA_DESC_CFG_MACM_SHA1 ; 
 int /*<<< orphan*/  SHA1_H0 ; 
 int /*<<< orphan*/  SHA1_H1 ; 
 int /*<<< orphan*/  SHA1_H2 ; 
 int /*<<< orphan*/  SHA1_H3 ; 
 int /*<<< orphan*/  SHA1_H4 ; 
 struct mv_cesa_ahash_req* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,struct mv_cesa_op_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct mv_cesa_ahash_req *creq = FUNC0(req);
	struct mv_cesa_op_ctx tmpl = { };

	FUNC2(&tmpl, CESA_SA_DESC_CFG_MACM_SHA1);

	FUNC1(req, &tmpl, false);

	creq->state[0] = SHA1_H0;
	creq->state[1] = SHA1_H1;
	creq->state[2] = SHA1_H2;
	creq->state[3] = SHA1_H3;
	creq->state[4] = SHA1_H4;

	return 0;
}