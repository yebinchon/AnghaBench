
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct creq_destroy_ah_resp {int dummy; } ;
struct cmdq_destroy_ah {int ah_cid; } ;
struct bnxt_qplib_res {struct bnxt_qplib_rcfw* rcfw; } ;
struct bnxt_qplib_rcfw {int dummy; } ;
struct bnxt_qplib_ah {int id; } ;


 int DESTROY_AH ;
 int RCFW_CMD_PREP (struct cmdq_destroy_ah,int ,int ) ;
 int bnxt_qplib_rcfw_send_message (struct bnxt_qplib_rcfw*,void*,void*,int *,int) ;
 int cpu_to_le32 (int ) ;

void bnxt_qplib_destroy_ah(struct bnxt_qplib_res *res, struct bnxt_qplib_ah *ah,
      bool block)
{
 struct bnxt_qplib_rcfw *rcfw = res->rcfw;
 struct cmdq_destroy_ah req;
 struct creq_destroy_ah_resp resp;
 u16 cmd_flags = 0;


 RCFW_CMD_PREP(req, DESTROY_AH, cmd_flags);

 req.ah_cid = cpu_to_le32(ah->id);

 bnxt_qplib_rcfw_send_message(rcfw, (void *)&req, (void *)&resp, ((void*)0),
         block);
}
