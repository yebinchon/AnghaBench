
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct creq_create_ah_resp {int xid; } ;
struct cmdq_create_ah {void** dest_mac; int traffic_class; void* pd_id; void* dest_vlan_id_flow_label; void* sgid_index; int hop_limit; int type; void** dgid; } ;
struct TYPE_5__ {int* hw_id; } ;
struct bnxt_qplib_res {TYPE_2__ sgid_tbl; struct bnxt_qplib_rcfw* rcfw; } ;
struct bnxt_qplib_rcfw {int dummy; } ;
struct bnxt_qplib_gid {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct bnxt_qplib_ah {size_t sgid_index; int flow_label; int id; int dmac; int traffic_class; TYPE_3__* pd; int hop_limit; int nw_type; TYPE_1__ dgid; } ;
struct TYPE_6__ {int id; } ;


 int CMDQ_CREATE_AH_DEST_VLAN_ID_MASK ;
 int CMDQ_CREATE_AH_FLOW_LABEL_MASK ;
 int CREATE_AH ;
 int RCFW_CMD_PREP (struct cmdq_create_ah,int ,int) ;
 int bnxt_qplib_rcfw_send_message (struct bnxt_qplib_rcfw*,void*,void*,int *,int) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int memcpy (int*,int ,int) ;

int bnxt_qplib_create_ah(struct bnxt_qplib_res *res, struct bnxt_qplib_ah *ah,
    bool block)
{
 struct bnxt_qplib_rcfw *rcfw = res->rcfw;
 struct cmdq_create_ah req;
 struct creq_create_ah_resp resp;
 u16 cmd_flags = 0;
 u32 temp32[4];
 u16 temp16[3];
 int rc;

 RCFW_CMD_PREP(req, CREATE_AH, cmd_flags);

 memcpy(temp32, ah->dgid.data, sizeof(struct bnxt_qplib_gid));
 req.dgid[0] = cpu_to_le32(temp32[0]);
 req.dgid[1] = cpu_to_le32(temp32[1]);
 req.dgid[2] = cpu_to_le32(temp32[2]);
 req.dgid[3] = cpu_to_le32(temp32[3]);

 req.type = ah->nw_type;
 req.hop_limit = ah->hop_limit;
 req.sgid_index = cpu_to_le16(res->sgid_tbl.hw_id[ah->sgid_index]);
 req.dest_vlan_id_flow_label = cpu_to_le32((ah->flow_label &
     CMDQ_CREATE_AH_FLOW_LABEL_MASK) |
     CMDQ_CREATE_AH_DEST_VLAN_ID_MASK);
 req.pd_id = cpu_to_le32(ah->pd->id);
 req.traffic_class = ah->traffic_class;


 memcpy(temp16, ah->dmac, 6);
 req.dest_mac[0] = cpu_to_le16(temp16[0]);
 req.dest_mac[1] = cpu_to_le16(temp16[1]);
 req.dest_mac[2] = cpu_to_le16(temp16[2]);

 rc = bnxt_qplib_rcfw_send_message(rcfw, (void *)&req, (void *)&resp,
       ((void*)0), block);
 if (rc)
  return rc;

 ah->id = le32_to_cpu(resp.xid);
 return 0;
}
