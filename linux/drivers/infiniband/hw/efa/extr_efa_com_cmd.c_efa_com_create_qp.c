
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efa_com_admin_queue {int dummy; } ;
struct efa_com_dev {int efa_dev; struct efa_com_admin_queue aq; } ;
struct efa_com_create_qp_result {int recv_sub_cq_idx; int send_sub_cq_idx; int llq_descriptors_offset; int rq_db_offset; int sq_db_offset; int qp_num; int qp_handle; } ;
struct efa_com_create_qp_params {int uarn; int rq_depth; int rq_ring_size_in_bytes; int sq_depth; int sq_ring_size_in_bytes; int recv_cq_idx; int send_cq_idx; int rq_base_addr; int qp_type; int pd; } ;
struct efa_admin_create_qp_resp {int recv_sub_cq_idx; int send_sub_cq_idx; int llq_descriptors_offset; int rq_db_offset; int sq_db_offset; int qp_num; int qp_handle; } ;
struct TYPE_4__ {int recv_queue_depth; int recv_queue_ring_size; int send_queue_depth; int send_queue_ring_size; } ;
struct TYPE_3__ {int opcode; } ;
struct efa_admin_create_qp_cmd {int uar; TYPE_2__ qp_alloc_size; int recv_cq_idx; int send_cq_idx; int rq_base_addr; int qp_type; int pd; TYPE_1__ aq_common_desc; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_acq_entry {int dummy; } ;
typedef int create_qp_cmd ;
typedef int cmd_completion ;


 int EFA_ADMIN_CREATE_QP ;
 int efa_com_cmd_exec (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,int,struct efa_admin_acq_entry*,int) ;
 int ibdev_err_ratelimited (int ,char*,int) ;

int efa_com_create_qp(struct efa_com_dev *edev,
        struct efa_com_create_qp_params *params,
        struct efa_com_create_qp_result *res)
{
 struct efa_admin_create_qp_cmd create_qp_cmd = {};
 struct efa_admin_create_qp_resp cmd_completion;
 struct efa_com_admin_queue *aq = &edev->aq;
 int err;

 create_qp_cmd.aq_common_desc.opcode = EFA_ADMIN_CREATE_QP;

 create_qp_cmd.pd = params->pd;
 create_qp_cmd.qp_type = params->qp_type;
 create_qp_cmd.rq_base_addr = params->rq_base_addr;
 create_qp_cmd.send_cq_idx = params->send_cq_idx;
 create_qp_cmd.recv_cq_idx = params->recv_cq_idx;
 create_qp_cmd.qp_alloc_size.send_queue_ring_size =
  params->sq_ring_size_in_bytes;
 create_qp_cmd.qp_alloc_size.send_queue_depth =
   params->sq_depth;
 create_qp_cmd.qp_alloc_size.recv_queue_ring_size =
   params->rq_ring_size_in_bytes;
 create_qp_cmd.qp_alloc_size.recv_queue_depth =
   params->rq_depth;
 create_qp_cmd.uar = params->uarn;

 err = efa_com_cmd_exec(aq,
          (struct efa_admin_aq_entry *)&create_qp_cmd,
          sizeof(create_qp_cmd),
          (struct efa_admin_acq_entry *)&cmd_completion,
          sizeof(cmd_completion));
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to create qp [%d]\n", err);
  return err;
 }

 res->qp_handle = cmd_completion.qp_handle;
 res->qp_num = cmd_completion.qp_num;
 res->sq_db_offset = cmd_completion.sq_db_offset;
 res->rq_db_offset = cmd_completion.rq_db_offset;
 res->llq_descriptors_offset = cmd_completion.llq_descriptors_offset;
 res->send_sub_cq_idx = cmd_completion.send_sub_cq_idx;
 res->recv_sub_cq_idx = cmd_completion.recv_sub_cq_idx;

 return 0;
}
