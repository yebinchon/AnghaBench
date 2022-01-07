
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_device_attr {int max_mr; int max_ah; int dev_ack_delay; int max_srq_wr; int max_srq_sge; int max_srq; int max_qp_resp_rd_atomic_resc; int max_qp_req_rd_atomic_resc; int max_fmr; int max_pd; int max_mw; int max_cqe; int max_cq; int max_sge; int max_rqe; int max_sqe; int max_qp; int hw_ver; int vendor_part_id; int vendor_id; int page_size_caps; int max_mr_size; int sys_image_guid; int fw_ver; } ;
struct qedr_dev {int atomic_cap; int rdma_ctx; struct qedr_device_attr attr; } ;
struct ib_udata {int dummy; } ;
struct ib_device_attr {int device_cap_flags; int max_mr; int max_map_per_fmr; int max_qp_init_rd_atom; int max_fast_reg_page_list_len; int max_ah; int max_pkeys; int local_ca_ack_delay; int max_srq_wr; int max_srq_sge; int max_srq; int max_qp_rd_atom; int max_fmr; int atomic_cap; int max_pd; int max_mw; int max_cqe; int max_cq; int max_sge_rd; int max_recv_sge; int max_send_sge; int max_qp_wr; int max_qp; int hw_ver; int vendor_part_id; int vendor_id; int page_size_cap; int max_mr_size; int sys_image_guid; int fw_ver; } ;
struct ib_device {int dummy; } ;


 int DP_ERR (struct qedr_dev*,char*,int ) ;
 int EINVAL ;
 int IB_DEVICE_CURR_QP_STATE_MOD ;
 int IB_DEVICE_LOCAL_DMA_LKEY ;
 int IB_DEVICE_MEM_MGT_EXTENSIONS ;
 int IB_DEVICE_RC_RNR_NAK_GEN ;
 int QEDR_ROCE_PKEY_MAX ;
 int fls (int ) ;
 struct qedr_dev* get_qedr_dev (struct ib_device*) ;
 int max_t (int ,int ,int ) ;
 int memset (struct ib_device_attr*,int ,int) ;
 int min (int,int) ;
 int u32 ;

int qedr_query_device(struct ib_device *ibdev,
        struct ib_device_attr *attr, struct ib_udata *udata)
{
 struct qedr_dev *dev = get_qedr_dev(ibdev);
 struct qedr_device_attr *qattr = &dev->attr;

 if (!dev->rdma_ctx) {
  DP_ERR(dev,
         "qedr_query_device called with invalid params rdma_ctx=%p\n",
         dev->rdma_ctx);
  return -EINVAL;
 }

 memset(attr, 0, sizeof(*attr));

 attr->fw_ver = qattr->fw_ver;
 attr->sys_image_guid = qattr->sys_image_guid;
 attr->max_mr_size = qattr->max_mr_size;
 attr->page_size_cap = qattr->page_size_caps;
 attr->vendor_id = qattr->vendor_id;
 attr->vendor_part_id = qattr->vendor_part_id;
 attr->hw_ver = qattr->hw_ver;
 attr->max_qp = qattr->max_qp;
 attr->max_qp_wr = max_t(u32, qattr->max_sqe, qattr->max_rqe);
 attr->device_cap_flags = IB_DEVICE_CURR_QP_STATE_MOD |
     IB_DEVICE_RC_RNR_NAK_GEN |
     IB_DEVICE_LOCAL_DMA_LKEY | IB_DEVICE_MEM_MGT_EXTENSIONS;

 attr->max_send_sge = qattr->max_sge;
 attr->max_recv_sge = qattr->max_sge;
 attr->max_sge_rd = qattr->max_sge;
 attr->max_cq = qattr->max_cq;
 attr->max_cqe = qattr->max_cqe;
 attr->max_mr = qattr->max_mr;
 attr->max_mw = qattr->max_mw;
 attr->max_pd = qattr->max_pd;
 attr->atomic_cap = dev->atomic_cap;
 attr->max_fmr = qattr->max_fmr;
 attr->max_map_per_fmr = 16;
 attr->max_qp_init_rd_atom =
     1 << (fls(qattr->max_qp_req_rd_atomic_resc) - 1);
 attr->max_qp_rd_atom =
     min(1 << (fls(qattr->max_qp_resp_rd_atomic_resc) - 1),
  attr->max_qp_init_rd_atom);

 attr->max_srq = qattr->max_srq;
 attr->max_srq_sge = qattr->max_srq_sge;
 attr->max_srq_wr = qattr->max_srq_wr;

 attr->local_ca_ack_delay = qattr->dev_ack_delay;
 attr->max_fast_reg_page_list_len = qattr->max_mr / 8;
 attr->max_pkeys = QEDR_ROCE_PKEY_MAX;
 attr->max_ah = qattr->max_ah;

 return 0;
}
