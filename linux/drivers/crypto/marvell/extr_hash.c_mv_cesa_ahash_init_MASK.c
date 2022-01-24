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
struct mv_cesa_ahash_req {int algo_le; scalar_t__ len; struct mv_cesa_op_ctx op_tmpl; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int CESA_SA_DESC_CFG_FIRST_FRAG ; 
 int CESA_SA_DESC_CFG_FRAG_MSK ; 
 int CESA_SA_DESC_CFG_OP_MAC_ONLY ; 
 int CESA_SA_DESC_CFG_OP_MSK ; 
 struct mv_cesa_ahash_req* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_cesa_ahash_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mv_cesa_op_ctx*,int,int) ; 

__attribute__((used)) static void FUNC5(struct ahash_request *req,
			      struct mv_cesa_op_ctx *tmpl, bool algo_le)
{
	struct mv_cesa_ahash_req *creq = FUNC0(req);

	FUNC1(creq, 0, sizeof(*creq));
	FUNC4(tmpl,
			      CESA_SA_DESC_CFG_OP_MAC_ONLY |
			      CESA_SA_DESC_CFG_FIRST_FRAG,
			      CESA_SA_DESC_CFG_OP_MSK |
			      CESA_SA_DESC_CFG_FRAG_MSK);
	FUNC3(tmpl, 0);
	FUNC2(tmpl, 0);
	creq->op_tmpl = *tmpl;
	creq->len = 0;
	creq->algo_le = algo_le;
}