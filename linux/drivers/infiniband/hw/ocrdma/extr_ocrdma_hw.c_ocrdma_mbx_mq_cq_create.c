
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ocrdma_queue_info {int size; int created; scalar_t__ id; int dma; int va; } ;
struct ocrdma_mcqe {int dummy; } ;
struct TYPE_3__ {int netdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; struct ocrdma_create_cq_cmd_rsp* mbx_cmd; } ;
struct TYPE_4__ {int rsvd_version; } ;
struct ocrdma_create_cq_cmd_rsp {int pgsz_pgcnt; int pdid_cqecnt; int cq_id; int * pa; scalar_t__ eqn; int ev_cnt_flags; TYPE_2__ req; } ;
struct ocrdma_create_cq_cmd {int pgsz_pgcnt; int pdid_cqecnt; int cq_id; int * pa; scalar_t__ eqn; int ev_cnt_flags; TYPE_2__ req; } ;


 int OCRDMA_CMD_CREATE_CQ ;
 int OCRDMA_CREATE_CQ_DEF_FLAGS ;
 int OCRDMA_CREATE_CQ_PAGE_SIZE_SHIFT ;
 int OCRDMA_CREATE_CQ_RSP_CQ_ID_MASK ;
 int OCRDMA_CREATE_CQ_VER2 ;
 int OCRDMA_MIN_Q_PAGE_SIZE ;
 int OCRDMA_SUBSYS_COMMON ;
 int PAGES_4K_SPANNED (int ,int) ;
 int PAGE_SIZE_4K ;
 int be_roce_mcc_cmd (int ,struct ocrdma_create_cq_cmd_rsp*,int,int *,int *) ;
 int memset (struct ocrdma_create_cq_cmd_rsp*,int ,int) ;
 int ocrdma_build_q_pages (int *,int,int ,int ) ;
 int ocrdma_init_mch (TYPE_2__*,int ,int ,int) ;

__attribute__((used)) static int ocrdma_mbx_mq_cq_create(struct ocrdma_dev *dev,
       struct ocrdma_queue_info *cq,
       struct ocrdma_queue_info *eq)
{
 struct ocrdma_create_cq_cmd *cmd = dev->mbx_cmd;
 struct ocrdma_create_cq_cmd_rsp *rsp = dev->mbx_cmd;
 int status;

 memset(cmd, 0, sizeof(*cmd));
 ocrdma_init_mch(&cmd->req, OCRDMA_CMD_CREATE_CQ,
   OCRDMA_SUBSYS_COMMON, sizeof(*cmd));

 cmd->req.rsvd_version = OCRDMA_CREATE_CQ_VER2;
 cmd->pgsz_pgcnt = (cq->size / OCRDMA_MIN_Q_PAGE_SIZE) <<
  OCRDMA_CREATE_CQ_PAGE_SIZE_SHIFT;
 cmd->pgsz_pgcnt |= PAGES_4K_SPANNED(cq->va, cq->size);

 cmd->ev_cnt_flags = OCRDMA_CREATE_CQ_DEF_FLAGS;
 cmd->eqn = eq->id;
 cmd->pdid_cqecnt = cq->size / sizeof(struct ocrdma_mcqe);

 ocrdma_build_q_pages(&cmd->pa[0], cq->size / OCRDMA_MIN_Q_PAGE_SIZE,
        cq->dma, PAGE_SIZE_4K);
 status = be_roce_mcc_cmd(dev->nic_info.netdev,
     cmd, sizeof(*cmd), ((void*)0), ((void*)0));
 if (!status) {
  cq->id = (u16) (rsp->cq_id & OCRDMA_CREATE_CQ_RSP_CQ_ID_MASK);
  cq->created = 1;
 }
 return status;
}
