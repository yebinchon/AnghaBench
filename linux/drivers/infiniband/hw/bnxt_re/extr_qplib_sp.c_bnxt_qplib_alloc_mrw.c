
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct creq_allocate_mrw_resp {int xid; } ;
struct cmdq_allocate_mrw {scalar_t__ mrw_flags; int mrw_handle; int access; int pd_id; } ;
struct bnxt_qplib_res {struct bnxt_qplib_rcfw* rcfw; } ;
struct bnxt_qplib_rcfw {int dummy; } ;
struct bnxt_qplib_mrw {scalar_t__ type; int flags; void* lkey; void* rkey; TYPE_1__* pd; } ;
struct TYPE_2__ {int id; } ;


 int ALLOCATE_MRW ;
 int BNXT_QPLIB_FR_PMR ;
 int CMDQ_ALLOCATE_MRW_ACCESS_CONSUMER_OWNED_KEY ;
 scalar_t__ CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE1 ;
 scalar_t__ CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2A ;
 scalar_t__ CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2B ;
 scalar_t__ CMDQ_ALLOCATE_MRW_MRW_FLAGS_PMR ;
 int RCFW_CMD_PREP (struct cmdq_allocate_mrw,int ,int ) ;
 int bnxt_qplib_rcfw_send_message (struct bnxt_qplib_rcfw*,void*,void*,int *,int ) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (unsigned long) ;
 void* le32_to_cpu (int ) ;

int bnxt_qplib_alloc_mrw(struct bnxt_qplib_res *res, struct bnxt_qplib_mrw *mrw)
{
 struct bnxt_qplib_rcfw *rcfw = res->rcfw;
 struct cmdq_allocate_mrw req;
 struct creq_allocate_mrw_resp resp;
 u16 cmd_flags = 0;
 unsigned long tmp;
 int rc;

 RCFW_CMD_PREP(req, ALLOCATE_MRW, cmd_flags);

 req.pd_id = cpu_to_le32(mrw->pd->id);
 req.mrw_flags = mrw->type;
 if ((mrw->type == CMDQ_ALLOCATE_MRW_MRW_FLAGS_PMR &&
      mrw->flags & BNXT_QPLIB_FR_PMR) ||
     mrw->type == CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2A ||
     mrw->type == CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2B)
  req.access = CMDQ_ALLOCATE_MRW_ACCESS_CONSUMER_OWNED_KEY;
 tmp = (unsigned long)mrw;
 req.mrw_handle = cpu_to_le64(tmp);

 rc = bnxt_qplib_rcfw_send_message(rcfw, (void *)&req,
       (void *)&resp, ((void*)0), 0);
 if (rc)
  return rc;

 if ((mrw->type == CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE1) ||
     (mrw->type == CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2A) ||
     (mrw->type == CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2B))
  mrw->rkey = le32_to_cpu(resp.xid);
 else
  mrw->lkey = le32_to_cpu(resp.xid);
 return 0;
}
