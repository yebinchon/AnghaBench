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
typedef  int u64 ;
typedef  int u16 ;
struct i40iw_sc_cqp {int /*<<< orphan*/  dev; int /*<<< orphan*/  polarity; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int /*<<< orphan*/  I40IW_CQP_OP_MANAGE_ARP ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int* FUNC3 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_sc_cqp*) ; 

__attribute__((used)) static enum i40iw_status_code FUNC5(
					struct i40iw_sc_cqp *cqp,
					u64 scratch,
					u16 arp_index,
					bool post_sq)
{
	u64 *wqe;
	u64 header;

	wqe = FUNC3(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;

	header = arp_index |
		 FUNC0(I40IW_CQP_OP_MANAGE_ARP, I40IW_CQPSQ_OPCODE) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);
	FUNC2(wqe, header);

	FUNC1(cqp->dev, I40IW_DEBUG_WQE, "ARP_CACHE_DEL_ENTRY WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC4(cqp);
	return 0;
}