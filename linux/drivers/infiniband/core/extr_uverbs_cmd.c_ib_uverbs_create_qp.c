
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_ex_create_qp {int is_srq; int qp_type; int sq_sig_all; int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; int srq_handle; int recv_cq_handle; int send_cq_handle; int pd_handle; int user_handle; } ;
struct ib_uverbs_create_qp {int is_srq; int qp_type; int sq_sig_all; int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; int srq_handle; int recv_cq_handle; int send_cq_handle; int pd_handle; int user_handle; } ;
typedef int cmd_ex ;
typedef int cmd ;


 int create_qp (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_qp*) ;
 int memset (struct ib_uverbs_ex_create_qp*,int ,int) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_create_qp*,int) ;

__attribute__((used)) static int ib_uverbs_create_qp(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_create_qp cmd;
 struct ib_uverbs_ex_create_qp cmd_ex;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 memset(&cmd_ex, 0, sizeof(cmd_ex));
 cmd_ex.user_handle = cmd.user_handle;
 cmd_ex.pd_handle = cmd.pd_handle;
 cmd_ex.send_cq_handle = cmd.send_cq_handle;
 cmd_ex.recv_cq_handle = cmd.recv_cq_handle;
 cmd_ex.srq_handle = cmd.srq_handle;
 cmd_ex.max_send_wr = cmd.max_send_wr;
 cmd_ex.max_recv_wr = cmd.max_recv_wr;
 cmd_ex.max_send_sge = cmd.max_send_sge;
 cmd_ex.max_recv_sge = cmd.max_recv_sge;
 cmd_ex.max_inline_data = cmd.max_inline_data;
 cmd_ex.sq_sig_all = cmd.sq_sig_all;
 cmd_ex.qp_type = cmd.qp_type;
 cmd_ex.is_srq = cmd.is_srq;

 return create_qp(attrs, &cmd_ex);
}
