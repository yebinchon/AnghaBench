
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct se_cmd {int t_data_nents; int t_data_sg; int t_prot_nents; int t_prot_sg; } ;
struct isert_conn {TYPE_2__* cm_id; int qp; } ;
struct TYPE_7__ {scalar_t__ nr_ops; } ;
struct isert_cmd {TYPE_3__ rw; TYPE_1__* iscsi_cmd; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {int port_num; } ;
struct TYPE_5__ {struct se_cmd se_cmd; } ;


 scalar_t__ isert_prot_cmd (struct isert_conn*,struct se_cmd*) ;
 int rdma_rw_ctx_destroy (TYPE_3__*,int ,int ,int ,int ,int) ;
 int rdma_rw_ctx_destroy_signature (TYPE_3__*,int ,int ,int ,int ,int ,int ,int) ;
 int target_reverse_dma_direction (struct se_cmd*) ;

__attribute__((used)) static void
isert_rdma_rw_ctx_destroy(struct isert_cmd *cmd, struct isert_conn *conn)
{
 struct se_cmd *se_cmd = &cmd->iscsi_cmd->se_cmd;
 enum dma_data_direction dir = target_reverse_dma_direction(se_cmd);

 if (!cmd->rw.nr_ops)
  return;

 if (isert_prot_cmd(conn, se_cmd)) {
  rdma_rw_ctx_destroy_signature(&cmd->rw, conn->qp,
    conn->cm_id->port_num, se_cmd->t_data_sg,
    se_cmd->t_data_nents, se_cmd->t_prot_sg,
    se_cmd->t_prot_nents, dir);
 } else {
  rdma_rw_ctx_destroy(&cmd->rw, conn->qp, conn->cm_id->port_num,
    se_cmd->t_data_sg, se_cmd->t_data_nents, dir);
 }

 cmd->rw.nr_ops = 0;
}
