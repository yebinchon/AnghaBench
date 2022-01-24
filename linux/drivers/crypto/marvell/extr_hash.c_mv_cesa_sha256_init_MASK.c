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
 int /*<<< orphan*/  CESA_SA_DESC_CFG_MACM_SHA256 ; 
 int /*<<< orphan*/  SHA256_H0 ; 
 int /*<<< orphan*/  SHA256_H1 ; 
 int /*<<< orphan*/  SHA256_H2 ; 
 int /*<<< orphan*/  SHA256_H3 ; 
 int /*<<< orphan*/  SHA256_H4 ; 
 int /*<<< orphan*/  SHA256_H5 ; 
 int /*<<< orphan*/  SHA256_H6 ; 
 int /*<<< orphan*/  SHA256_H7 ; 
 struct mv_cesa_ahash_req* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,struct mv_cesa_op_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct mv_cesa_ahash_req *creq = FUNC0(req);
	struct mv_cesa_op_ctx tmpl = { };

	FUNC2(&tmpl, CESA_SA_DESC_CFG_MACM_SHA256);

	FUNC1(req, &tmpl, false);

	creq->state[0] = SHA256_H0;
	creq->state[1] = SHA256_H1;
	creq->state[2] = SHA256_H2;
	creq->state[3] = SHA256_H3;
	creq->state[4] = SHA256_H4;
	creq->state[5] = SHA256_H5;
	creq->state[6] = SHA256_H6;
	creq->state[7] = SHA256_H7;

	return 0;
}