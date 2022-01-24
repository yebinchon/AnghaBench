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
struct i40iw_sc_cqp {int /*<<< orphan*/  dev; int /*<<< orphan*/  polarity; } ;
struct i40iw_local_mac_ipaddr_entry_info {int* mac_addr; int /*<<< orphan*/  entry_idx; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_MLIPA_IPTABLEIDX ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int /*<<< orphan*/  I40IW_CQP_OP_MANAGE_LOC_MAC_IP_TABLE ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int* FUNC4 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int) ; 

__attribute__((used)) static enum i40iw_status_code FUNC7(
				struct i40iw_sc_cqp *cqp,
				struct i40iw_local_mac_ipaddr_entry_info *info,
				u64 scratch,
				bool post_sq)
{
	u64 *wqe;
	u64 temp, header;

	wqe = FUNC4(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	temp = info->mac_addr[5] |
		FUNC1(info->mac_addr[4], 8) |
		FUNC1(info->mac_addr[3], 16) |
		FUNC1(info->mac_addr[2], 24) |
		FUNC1(info->mac_addr[1], 32) |
		FUNC1(info->mac_addr[0], 40);

	FUNC6(wqe, 32, temp);

	header = FUNC0(info->entry_idx, I40IW_CQPSQ_MLIPA_IPTABLEIDX) |
		 FUNC0(I40IW_CQP_OP_MANAGE_LOC_MAC_IP_TABLE, I40IW_CQPSQ_OPCODE) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC3(wqe, header);

	FUNC2(cqp->dev, I40IW_DEBUG_WQE, "ADD_LOCAL_MAC_IPADDR WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC5(cqp);
	return 0;
}