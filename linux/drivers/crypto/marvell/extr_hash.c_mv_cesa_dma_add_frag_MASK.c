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
struct mv_cesa_tdma_chain {int dummy; } ;
struct mv_cesa_op_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_SA_DESC_CFG_FRAG_MSK ; 
 int /*<<< orphan*/  CESA_SA_DESC_CFG_MID_FRAG ; 
 struct mv_cesa_op_ctx* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mv_cesa_op_ctx*) ; 
 int FUNC2 (struct mv_cesa_tdma_chain*,int /*<<< orphan*/ ) ; 
 struct mv_cesa_op_ctx* FUNC3 (struct mv_cesa_tdma_chain*,struct mv_cesa_op_ctx*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mv_cesa_op_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv_cesa_op_ctx*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mv_cesa_op_ctx *
FUNC7(struct mv_cesa_tdma_chain *chain,
		     struct mv_cesa_op_ctx *tmpl, unsigned int frag_len,
		     gfp_t flags)
{
	struct mv_cesa_op_ctx *op;
	int ret;

	op = FUNC3(chain, tmpl, false, flags);
	if (FUNC1(op))
		return op;

	/* Set the operation block fragment length. */
	FUNC5(op, frag_len);

	/* Append dummy desc to launch operation */
	ret = FUNC2(chain, flags);
	if (ret)
		return FUNC0(ret);

	if (FUNC4(tmpl))
		FUNC6(tmpl,
				      CESA_SA_DESC_CFG_MID_FRAG,
				      CESA_SA_DESC_CFG_FRAG_MSK);

	return op;
}