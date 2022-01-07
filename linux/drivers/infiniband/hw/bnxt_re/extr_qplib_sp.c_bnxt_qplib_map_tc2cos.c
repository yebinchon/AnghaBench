
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct creq_map_tc_to_cos_resp {int dummy; } ;
struct cmdq_map_tc_to_cos {void* cos1; void* cos0; } ;
struct bnxt_qplib_res {struct bnxt_qplib_rcfw* rcfw; } ;
struct bnxt_qplib_rcfw {int dummy; } ;


 int MAP_TC_TO_COS ;
 int RCFW_CMD_PREP (struct cmdq_map_tc_to_cos,int ,int ) ;
 int bnxt_qplib_rcfw_send_message (struct bnxt_qplib_rcfw*,void*,void*,int *,int ) ;
 void* cpu_to_le16 (int ) ;

int bnxt_qplib_map_tc2cos(struct bnxt_qplib_res *res, u16 *cids)
{
 struct bnxt_qplib_rcfw *rcfw = res->rcfw;
 struct cmdq_map_tc_to_cos req;
 struct creq_map_tc_to_cos_resp resp;
 u16 cmd_flags = 0;

 RCFW_CMD_PREP(req, MAP_TC_TO_COS, cmd_flags);
 req.cos0 = cpu_to_le16(cids[0]);
 req.cos1 = cpu_to_le16(cids[1]);

 return bnxt_qplib_rcfw_send_message(rcfw, (void *)&req, (void *)&resp,
      ((void*)0), 0);
}
