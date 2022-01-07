
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; int created; int dma; } ;
struct ocrdma_eq {int vector; TYPE_2__ q; } ;
struct TYPE_4__ {int netdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; struct ocrdma_create_eq_rsp* mbx_cmd; } ;
struct TYPE_6__ {int rsvd_version; } ;
struct ocrdma_create_eq_rsp {int num_pages; int cnt; int vector_eqid; int * pa; int valid; TYPE_3__ req; } ;
struct ocrdma_create_eq_req {int num_pages; int cnt; int vector_eqid; int * pa; int valid; TYPE_3__ req; } ;


 int OCRDMA_CMD_CREATE_EQ ;
 int OCRDMA_CREATE_EQ_CNT_SHIFT ;
 int OCRDMA_CREATE_EQ_VALID ;
 int OCRDMA_SUBSYS_COMMON ;
 int PAGE_SIZE_4K ;
 int be_roce_mcc_cmd (int ,struct ocrdma_create_eq_rsp*,int,int *,int *) ;
 int memset (struct ocrdma_create_eq_rsp*,int ,int) ;
 int ocrdma_build_q_pages (int *,int,int ,int ) ;
 int ocrdma_init_mch (TYPE_3__*,int ,int ,int) ;

__attribute__((used)) static int ocrdma_mbx_create_eq(struct ocrdma_dev *dev, struct ocrdma_eq *eq)
{
 int status;
 struct ocrdma_create_eq_req *cmd = dev->mbx_cmd;
 struct ocrdma_create_eq_rsp *rsp = dev->mbx_cmd;

 memset(cmd, 0, sizeof(*cmd));
 ocrdma_init_mch(&cmd->req, OCRDMA_CMD_CREATE_EQ, OCRDMA_SUBSYS_COMMON,
   sizeof(*cmd));

 cmd->req.rsvd_version = 2;
 cmd->num_pages = 4;
 cmd->valid = OCRDMA_CREATE_EQ_VALID;
 cmd->cnt = 4 << OCRDMA_CREATE_EQ_CNT_SHIFT;

 ocrdma_build_q_pages(&cmd->pa[0], cmd->num_pages, eq->q.dma,
        PAGE_SIZE_4K);
 status = be_roce_mcc_cmd(dev->nic_info.netdev, cmd, sizeof(*cmd), ((void*)0),
     ((void*)0));
 if (!status) {
  eq->q.id = rsp->vector_eqid & 0xffff;
  eq->vector = (rsp->vector_eqid >> 16) & 0xffff;
  eq->q.created = 1;
 }
 return status;
}
