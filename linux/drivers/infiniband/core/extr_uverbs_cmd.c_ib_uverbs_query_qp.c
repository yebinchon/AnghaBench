
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_query_qp_resp {int sq_sig_all; int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; int alt_dest; int dest; int alt_timeout; int alt_port_num; int rnr_retry; int retry_cnt; int timeout; int port_num; int min_rnr_timer; int max_dest_rd_atomic; int max_rd_atomic; int sq_draining; int alt_pkey_index; int pkey_index; int qp_access_flags; int dest_qp_num; int sq_psn; int rq_psn; int qkey; int path_mig_state; int path_mtu; int cur_qp_state; int qp_state; } ;
struct ib_uverbs_query_qp {int attr_mask; int qp_handle; } ;
struct TYPE_2__ {int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; } ;
struct ib_qp_init_attr {scalar_t__ sq_sig_type; TYPE_1__ cap; int alt_ah_attr; int ah_attr; int alt_timeout; int alt_port_num; int rnr_retry; int retry_cnt; int timeout; int port_num; int min_rnr_timer; int max_dest_rd_atomic; int max_rd_atomic; int sq_draining; int alt_pkey_index; int pkey_index; int qp_access_flags; int dest_qp_num; int sq_psn; int rq_psn; int qkey; int path_mig_state; int path_mtu; int cur_qp_state; int qp_state; } ;
struct ib_qp_attr {scalar_t__ sq_sig_type; TYPE_1__ cap; int alt_ah_attr; int ah_attr; int alt_timeout; int alt_port_num; int rnr_retry; int retry_cnt; int timeout; int port_num; int min_rnr_timer; int max_dest_rd_atomic; int max_rd_atomic; int sq_draining; int alt_pkey_index; int pkey_index; int qp_access_flags; int dest_qp_num; int sq_psn; int rq_psn; int qkey; int path_mig_state; int path_mtu; int cur_qp_state; int qp_state; } ;
struct ib_qp {int dummy; } ;
typedef int resp ;
typedef int cmd ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IB_SIGNAL_ALL_WR ;
 int UVERBS_OBJECT_QP ;
 int copy_ah_attr_to_uverbs (int *,int *) ;
 int ib_query_qp (struct ib_qp*,struct ib_qp_init_attr*,int ,struct ib_qp_init_attr*) ;
 int kfree (struct ib_qp_init_attr*) ;
 struct ib_qp_init_attr* kmalloc (int,int ) ;
 int memset (struct ib_uverbs_query_qp_resp*,int ,int) ;
 struct ib_qp* uobj_get_obj_read (struct ib_qp*,int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_qp*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_query_qp*,int) ;
 int uverbs_response (struct uverbs_attr_bundle*,struct ib_uverbs_query_qp_resp*,int) ;

__attribute__((used)) static int ib_uverbs_query_qp(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_query_qp cmd;
 struct ib_uverbs_query_qp_resp resp;
 struct ib_qp *qp;
 struct ib_qp_attr *attr;
 struct ib_qp_init_attr *init_attr;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 attr = kmalloc(sizeof *attr, GFP_KERNEL);
 init_attr = kmalloc(sizeof *init_attr, GFP_KERNEL);
 if (!attr || !init_attr) {
  ret = -ENOMEM;
  goto out;
 }

 qp = uobj_get_obj_read(qp, UVERBS_OBJECT_QP, cmd.qp_handle, attrs);
 if (!qp) {
  ret = -EINVAL;
  goto out;
 }

 ret = ib_query_qp(qp, attr, cmd.attr_mask, init_attr);

 uobj_put_obj_read(qp);

 if (ret)
  goto out;

 memset(&resp, 0, sizeof resp);

 resp.qp_state = attr->qp_state;
 resp.cur_qp_state = attr->cur_qp_state;
 resp.path_mtu = attr->path_mtu;
 resp.path_mig_state = attr->path_mig_state;
 resp.qkey = attr->qkey;
 resp.rq_psn = attr->rq_psn;
 resp.sq_psn = attr->sq_psn;
 resp.dest_qp_num = attr->dest_qp_num;
 resp.qp_access_flags = attr->qp_access_flags;
 resp.pkey_index = attr->pkey_index;
 resp.alt_pkey_index = attr->alt_pkey_index;
 resp.sq_draining = attr->sq_draining;
 resp.max_rd_atomic = attr->max_rd_atomic;
 resp.max_dest_rd_atomic = attr->max_dest_rd_atomic;
 resp.min_rnr_timer = attr->min_rnr_timer;
 resp.port_num = attr->port_num;
 resp.timeout = attr->timeout;
 resp.retry_cnt = attr->retry_cnt;
 resp.rnr_retry = attr->rnr_retry;
 resp.alt_port_num = attr->alt_port_num;
 resp.alt_timeout = attr->alt_timeout;

 copy_ah_attr_to_uverbs(&resp.dest, &attr->ah_attr);
 copy_ah_attr_to_uverbs(&resp.alt_dest, &attr->alt_ah_attr);

 resp.max_send_wr = init_attr->cap.max_send_wr;
 resp.max_recv_wr = init_attr->cap.max_recv_wr;
 resp.max_send_sge = init_attr->cap.max_send_sge;
 resp.max_recv_sge = init_attr->cap.max_recv_sge;
 resp.max_inline_data = init_attr->cap.max_inline_data;
 resp.sq_sig_all = init_attr->sq_sig_type == IB_SIGNAL_ALL_WR;

 ret = uverbs_response(attrs, &resp, sizeof(resp));

out:
 kfree(attr);
 kfree(init_attr);

 return ret;
}
