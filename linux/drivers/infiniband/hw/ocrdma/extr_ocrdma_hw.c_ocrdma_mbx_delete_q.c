
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ocrdma_queue_info {int created; int id; } ;
struct TYPE_2__ {int netdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; struct ocrdma_delete_q_req* mbx_cmd; } ;
struct ocrdma_delete_q_req {int id; int req; } ;


 int BUG () ;
 int OCRDMA_CMD_DELETE_CQ ;
 int OCRDMA_CMD_DELETE_EQ ;
 int OCRDMA_CMD_DELETE_MQ ;
 int OCRDMA_SUBSYS_COMMON ;



 int be_roce_mcc_cmd (int ,struct ocrdma_delete_q_req*,int,int *,int *) ;
 int memset (struct ocrdma_delete_q_req*,int ,int) ;
 int ocrdma_init_mch (int *,int ,int ,int) ;

__attribute__((used)) static int ocrdma_mbx_delete_q(struct ocrdma_dev *dev,
          struct ocrdma_queue_info *q, int queue_type)
{
 u8 opcode = 0;
 int status;
 struct ocrdma_delete_q_req *cmd = dev->mbx_cmd;

 switch (queue_type) {
 case 128:
  opcode = OCRDMA_CMD_DELETE_MQ;
  break;
 case 130:
  opcode = OCRDMA_CMD_DELETE_CQ;
  break;
 case 129:
  opcode = OCRDMA_CMD_DELETE_EQ;
  break;
 default:
  BUG();
 }
 memset(cmd, 0, sizeof(*cmd));
 ocrdma_init_mch(&cmd->req, opcode, OCRDMA_SUBSYS_COMMON, sizeof(*cmd));
 cmd->id = q->id;

 status = be_roce_mcc_cmd(dev->nic_info.netdev,
     cmd, sizeof(*cmd), ((void*)0), ((void*)0));
 if (!status)
  q->created = 0;
 return status;
}
