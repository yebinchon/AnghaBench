#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct creq_create_ah_resp {int /*<<< orphan*/  xid; } ;
struct cmdq_create_ah {void** dest_mac; int /*<<< orphan*/  traffic_class; void* pd_id; void* dest_vlan_id_flow_label; void* sgid_index; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  type; void** dgid; } ;
struct TYPE_5__ {int* hw_id; } ;
struct bnxt_qplib_res {TYPE_2__ sgid_tbl; struct bnxt_qplib_rcfw* rcfw; } ;
struct bnxt_qplib_rcfw {int dummy; } ;
struct bnxt_qplib_gid {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct bnxt_qplib_ah {size_t sgid_index; int flow_label; int /*<<< orphan*/  id; int /*<<< orphan*/  dmac; int /*<<< orphan*/  traffic_class; TYPE_3__* pd; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  nw_type; TYPE_1__ dgid; } ;
struct TYPE_6__ {int id; } ;

/* Variables and functions */
 int CMDQ_CREATE_AH_DEST_VLAN_ID_MASK ; 
 int CMDQ_CREATE_AH_FLOW_LABEL_MASK ; 
 int /*<<< orphan*/  CREATE_AH ; 
 int /*<<< orphan*/  FUNC0 (struct cmdq_create_ah,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bnxt_qplib_rcfw*,void*,void*,int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct bnxt_qplib_res *res, struct bnxt_qplib_ah *ah,
			 bool block)
{
	struct bnxt_qplib_rcfw *rcfw = res->rcfw;
	struct cmdq_create_ah req;
	struct creq_create_ah_resp resp;
	u16 cmd_flags = 0;
	u32 temp32[4];
	u16 temp16[3];
	int rc;

	FUNC0(req, CREATE_AH, cmd_flags);

	FUNC5(temp32, ah->dgid.data, sizeof(struct bnxt_qplib_gid));
	req.dgid[0] = FUNC3(temp32[0]);
	req.dgid[1] = FUNC3(temp32[1]);
	req.dgid[2] = FUNC3(temp32[2]);
	req.dgid[3] = FUNC3(temp32[3]);

	req.type = ah->nw_type;
	req.hop_limit = ah->hop_limit;
	req.sgid_index = FUNC2(res->sgid_tbl.hw_id[ah->sgid_index]);
	req.dest_vlan_id_flow_label = FUNC3((ah->flow_label &
					CMDQ_CREATE_AH_FLOW_LABEL_MASK) |
					CMDQ_CREATE_AH_DEST_VLAN_ID_MASK);
	req.pd_id = FUNC3(ah->pd->id);
	req.traffic_class = ah->traffic_class;

	/* MAC in network format */
	FUNC5(temp16, ah->dmac, 6);
	req.dest_mac[0] = FUNC2(temp16[0]);
	req.dest_mac[1] = FUNC2(temp16[1]);
	req.dest_mac[2] = FUNC2(temp16[2]);

	rc = FUNC1(rcfw, (void *)&req, (void *)&resp,
					  NULL, block);
	if (rc)
		return rc;

	ah->id = FUNC4(resp.xid);
	return 0;
}