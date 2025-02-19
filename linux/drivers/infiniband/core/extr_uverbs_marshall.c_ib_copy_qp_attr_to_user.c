
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_qp_attr {int reserved; int alt_timeout; int alt_port_num; int rnr_retry; int retry_cnt; int timeout; int port_num; int min_rnr_timer; int max_dest_rd_atomic; int max_rd_atomic; int sq_draining; int en_sqd_async_notify; int alt_pkey_index; int pkey_index; int alt_ah_attr; int ah_attr; int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; int qp_access_flags; int dest_qp_num; int sq_psn; int rq_psn; int qkey; int path_mig_state; int path_mtu; int cur_qp_state; int qp_state; } ;
struct TYPE_2__ {int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; } ;
struct ib_qp_attr {int alt_timeout; int alt_port_num; int rnr_retry; int retry_cnt; int timeout; int port_num; int min_rnr_timer; int max_dest_rd_atomic; int max_rd_atomic; int sq_draining; int en_sqd_async_notify; int alt_pkey_index; int pkey_index; int alt_ah_attr; int ah_attr; TYPE_1__ cap; int qp_access_flags; int dest_qp_num; int sq_psn; int rq_psn; int qkey; int path_mig_state; int path_mtu; int cur_qp_state; int qp_state; } ;
struct ib_device {int dummy; } ;


 int ib_copy_ah_attr_to_user (struct ib_device*,int *,int *) ;
 int memset (int ,int ,int) ;

void ib_copy_qp_attr_to_user(struct ib_device *device,
        struct ib_uverbs_qp_attr *dst,
        struct ib_qp_attr *src)
{
 dst->qp_state = src->qp_state;
 dst->cur_qp_state = src->cur_qp_state;
 dst->path_mtu = src->path_mtu;
 dst->path_mig_state = src->path_mig_state;
 dst->qkey = src->qkey;
 dst->rq_psn = src->rq_psn;
 dst->sq_psn = src->sq_psn;
 dst->dest_qp_num = src->dest_qp_num;
 dst->qp_access_flags = src->qp_access_flags;

 dst->max_send_wr = src->cap.max_send_wr;
 dst->max_recv_wr = src->cap.max_recv_wr;
 dst->max_send_sge = src->cap.max_send_sge;
 dst->max_recv_sge = src->cap.max_recv_sge;
 dst->max_inline_data = src->cap.max_inline_data;

 ib_copy_ah_attr_to_user(device, &dst->ah_attr, &src->ah_attr);
 ib_copy_ah_attr_to_user(device, &dst->alt_ah_attr, &src->alt_ah_attr);

 dst->pkey_index = src->pkey_index;
 dst->alt_pkey_index = src->alt_pkey_index;
 dst->en_sqd_async_notify = src->en_sqd_async_notify;
 dst->sq_draining = src->sq_draining;
 dst->max_rd_atomic = src->max_rd_atomic;
 dst->max_dest_rd_atomic = src->max_dest_rd_atomic;
 dst->min_rnr_timer = src->min_rnr_timer;
 dst->port_num = src->port_num;
 dst->timeout = src->timeout;
 dst->retry_cnt = src->retry_cnt;
 dst->rnr_retry = src->rnr_retry;
 dst->alt_port_num = src->alt_port_num;
 dst->alt_timeout = src->alt_timeout;
 memset(dst->reserved, 0, sizeof(dst->reserved));
}
