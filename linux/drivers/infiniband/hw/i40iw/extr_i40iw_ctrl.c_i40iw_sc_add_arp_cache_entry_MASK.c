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
struct i40iw_sc_cqp {int polarity; int /*<<< orphan*/  dev; } ;
struct i40iw_add_arp_cache_entry_info {int reach_max; int* mac_addr; int arp_index; scalar_t__ permanent; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_CQPSQ_MAT_ENTRYVALID ; 
 int /*<<< orphan*/  I40IW_CQPSQ_MAT_PERMANENT ; 
 int /*<<< orphan*/  I40IW_CQPSQ_OPCODE ; 
 int /*<<< orphan*/  I40IW_CQPSQ_WQEVALID ; 
 int I40IW_CQP_OP_MANAGE_ARP ; 
 int I40IW_CQP_WQE_SIZE ; 
 int /*<<< orphan*/  I40IW_DEBUG_WQE ; 
 int I40IW_ERR_RING_FULL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int* FUNC4 (struct i40iw_sc_cqp*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40iw_sc_cqp*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int) ; 

__attribute__((used)) static enum i40iw_status_code FUNC7(
				struct i40iw_sc_cqp *cqp,
				struct i40iw_add_arp_cache_entry_info *info,
				u64 scratch,
				bool post_sq)
{
	u64 *wqe;
	u64 temp, header;

	wqe = FUNC4(cqp, scratch);
	if (!wqe)
		return I40IW_ERR_RING_FULL;
	FUNC6(wqe, 8, info->reach_max);

	temp = info->mac_addr[5] |
	       FUNC1(info->mac_addr[4], 8) |
	       FUNC1(info->mac_addr[3], 16) |
	       FUNC1(info->mac_addr[2], 24) |
	       FUNC1(info->mac_addr[1], 32) |
	       FUNC1(info->mac_addr[0], 40);

	FUNC6(wqe, 16, temp);

	header = info->arp_index |
		 FUNC0(I40IW_CQP_OP_MANAGE_ARP, I40IW_CQPSQ_OPCODE) |
		 FUNC0((info->permanent ? 1 : 0), I40IW_CQPSQ_MAT_PERMANENT) |
		 FUNC0(1, I40IW_CQPSQ_MAT_ENTRYVALID) |
		 FUNC0(cqp->polarity, I40IW_CQPSQ_WQEVALID);

	FUNC3(wqe, header);

	FUNC2(cqp->dev, I40IW_DEBUG_WQE, "ARP_CACHE_ENTRY WQE",
			wqe, I40IW_CQP_WQE_SIZE * 8);

	if (post_sq)
		FUNC5(cqp);
	return 0;
}