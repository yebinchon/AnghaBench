
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocrdma_queue_info {int id; int created; int dma; int len; int size; int va; } ;
struct ocrdma_pa {int dummy; } ;
struct TYPE_3__ {int netdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; struct ocrdma_create_mq_rsp* mbx_cmd; } ;
struct TYPE_4__ {int rsvd_version; } ;
struct ocrdma_create_mq_rsp {int cqid_pages; int async_cqid_ringsize; int id; struct ocrdma_pa* pa; int valid; int async_event_bitmap; int async_cqid_valid; TYPE_2__ req; } ;
struct ocrdma_create_mq_req {int cqid_pages; int async_cqid_ringsize; int id; struct ocrdma_pa* pa; int valid; int async_event_bitmap; int async_cqid_valid; TYPE_2__ req; } ;


 int BIT (int ) ;
 int OCRDMA_ASYNC_GRP5_EVE_CODE ;
 int OCRDMA_ASYNC_LINK_EVE_CODE ;
 int OCRDMA_ASYNC_RDMA_EVE_CODE ;
 int OCRDMA_CMD_CREATE_MQ_EXT ;
 int OCRDMA_CREATE_MQ_ASYNC_CQ_VALID ;
 int OCRDMA_CREATE_MQ_CQ_ID_SHIFT ;
 int OCRDMA_CREATE_MQ_RING_SIZE_SHIFT ;
 int OCRDMA_CREATE_MQ_VALID ;
 int OCRDMA_SUBSYS_COMMON ;
 int PAGES_4K_SPANNED (int ,int ) ;
 int PAGE_SIZE_4K ;
 int be_roce_mcc_cmd (int ,struct ocrdma_create_mq_rsp*,int,int *,int *) ;
 int memset (struct ocrdma_create_mq_rsp*,int ,int) ;
 int ocrdma_build_q_pages (struct ocrdma_pa*,int,int ,int ) ;
 int ocrdma_encoded_q_len (int ) ;
 int ocrdma_init_mch (TYPE_2__*,int ,int ,int) ;

__attribute__((used)) static int ocrdma_mbx_create_mq(struct ocrdma_dev *dev,
    struct ocrdma_queue_info *mq,
    struct ocrdma_queue_info *cq)
{
 int num_pages, status;
 struct ocrdma_create_mq_req *cmd = dev->mbx_cmd;
 struct ocrdma_create_mq_rsp *rsp = dev->mbx_cmd;
 struct ocrdma_pa *pa;

 memset(cmd, 0, sizeof(*cmd));
 num_pages = PAGES_4K_SPANNED(mq->va, mq->size);

 ocrdma_init_mch(&cmd->req, OCRDMA_CMD_CREATE_MQ_EXT,
   OCRDMA_SUBSYS_COMMON, sizeof(*cmd));
 cmd->req.rsvd_version = 1;
 cmd->cqid_pages = num_pages;
 cmd->cqid_pages |= (cq->id << OCRDMA_CREATE_MQ_CQ_ID_SHIFT);
 cmd->async_cqid_valid = OCRDMA_CREATE_MQ_ASYNC_CQ_VALID;

 cmd->async_event_bitmap = BIT(OCRDMA_ASYNC_GRP5_EVE_CODE);
 cmd->async_event_bitmap |= BIT(OCRDMA_ASYNC_RDMA_EVE_CODE);

 cmd->async_event_bitmap |= BIT(OCRDMA_ASYNC_LINK_EVE_CODE);

 cmd->async_cqid_ringsize = cq->id;
 cmd->async_cqid_ringsize |= (ocrdma_encoded_q_len(mq->len) <<
    OCRDMA_CREATE_MQ_RING_SIZE_SHIFT);
 cmd->valid = OCRDMA_CREATE_MQ_VALID;
 pa = &cmd->pa[0];

 ocrdma_build_q_pages(pa, num_pages, mq->dma, PAGE_SIZE_4K);
 status = be_roce_mcc_cmd(dev->nic_info.netdev,
     cmd, sizeof(*cmd), ((void*)0), ((void*)0));
 if (!status) {
  mq->id = rsp->id;
  mq->created = 1;
 }
 return status;
}
