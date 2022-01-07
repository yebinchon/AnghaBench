
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pvrdma_dev {TYPE_3__* dsr; TYPE_1__* pdev; } ;
struct ib_udata {scalar_t__ outlen; scalar_t__ inlen; } ;
struct ib_device_attr {int device_cap_flags; void* max_fast_reg_page_list_len; int local_ca_ack_delay; int max_pkeys; int max_ah; int atomic_cap; int masked_atomic_cap; int max_qp_init_rd_atom; int max_qp_rd_atom; int max_pd; int max_mr; int max_cqe; int max_cq; int max_srq_sge; int max_srq_wr; int max_srq; void* max_sge_rd; int max_recv_sge; int max_send_sge; int max_qp_wr; int max_qp; int hw_ver; int vendor_part_id; int vendor_id; int page_size_cap; int max_mr_size; int sys_image_guid; int fw_ver; } ;
struct ib_device {int dummy; } ;
struct TYPE_5__ {int device_cap_flags; int atomic_ops; int bmme_flags; int max_fast_reg_page_list_len; int local_ca_ack_delay; int max_pkeys; int max_ah; int max_qp_init_rd_atom; int max_qp_rd_atom; int max_pd; int max_mr; int max_cqe; int max_cq; int max_srq_sge; int max_srq_wr; int max_srq; int max_sge_rd; int max_sge; int max_qp_wr; int max_qp; int hw_ver; int vendor_id; int page_size_cap; int max_mr_size; int sys_image_guid; int fw_ver; } ;
struct TYPE_6__ {TYPE_2__ caps; } ;
struct TYPE_4__ {int device; } ;


 int EINVAL ;
 int IB_ATOMIC_HCA ;
 int IB_ATOMIC_NONE ;
 int IB_DEVICE_MEM_MGT_EXTENSIONS ;
 int IB_DEVICE_PORT_ACTIVE_EVENT ;
 int IB_DEVICE_RC_RNR_NAK_GEN ;
 int PVRDMA_ATOMIC_OP_COMP_SWAP ;
 int PVRDMA_ATOMIC_OP_FETCH_ADD ;
 int PVRDMA_BMME_FLAG_FAST_REG_WR ;
 int PVRDMA_BMME_FLAG_LOCAL_INV ;
 int PVRDMA_BMME_FLAG_REMOTE_INV ;
 void* PVRDMA_GET_CAP (struct pvrdma_dev*,int ,int ) ;
 int PVRDMA_MAX_FAST_REG_PAGES ;
 struct pvrdma_dev* to_vdev (struct ib_device*) ;

int pvrdma_query_device(struct ib_device *ibdev,
   struct ib_device_attr *props,
   struct ib_udata *uhw)
{
 struct pvrdma_dev *dev = to_vdev(ibdev);

 if (uhw->inlen || uhw->outlen)
  return -EINVAL;

 props->fw_ver = dev->dsr->caps.fw_ver;
 props->sys_image_guid = dev->dsr->caps.sys_image_guid;
 props->max_mr_size = dev->dsr->caps.max_mr_size;
 props->page_size_cap = dev->dsr->caps.page_size_cap;
 props->vendor_id = dev->dsr->caps.vendor_id;
 props->vendor_part_id = dev->pdev->device;
 props->hw_ver = dev->dsr->caps.hw_ver;
 props->max_qp = dev->dsr->caps.max_qp;
 props->max_qp_wr = dev->dsr->caps.max_qp_wr;
 props->device_cap_flags = dev->dsr->caps.device_cap_flags;
 props->max_send_sge = dev->dsr->caps.max_sge;
 props->max_recv_sge = dev->dsr->caps.max_sge;
 props->max_sge_rd = PVRDMA_GET_CAP(dev, dev->dsr->caps.max_sge,
        dev->dsr->caps.max_sge_rd);
 props->max_srq = dev->dsr->caps.max_srq;
 props->max_srq_wr = dev->dsr->caps.max_srq_wr;
 props->max_srq_sge = dev->dsr->caps.max_srq_sge;
 props->max_cq = dev->dsr->caps.max_cq;
 props->max_cqe = dev->dsr->caps.max_cqe;
 props->max_mr = dev->dsr->caps.max_mr;
 props->max_pd = dev->dsr->caps.max_pd;
 props->max_qp_rd_atom = dev->dsr->caps.max_qp_rd_atom;
 props->max_qp_init_rd_atom = dev->dsr->caps.max_qp_init_rd_atom;
 props->atomic_cap =
  dev->dsr->caps.atomic_ops &
  (PVRDMA_ATOMIC_OP_COMP_SWAP | PVRDMA_ATOMIC_OP_FETCH_ADD) ?
  IB_ATOMIC_HCA : IB_ATOMIC_NONE;
 props->masked_atomic_cap = props->atomic_cap;
 props->max_ah = dev->dsr->caps.max_ah;
 props->max_pkeys = dev->dsr->caps.max_pkeys;
 props->local_ca_ack_delay = dev->dsr->caps.local_ca_ack_delay;
 if ((dev->dsr->caps.bmme_flags & PVRDMA_BMME_FLAG_LOCAL_INV) &&
     (dev->dsr->caps.bmme_flags & PVRDMA_BMME_FLAG_REMOTE_INV) &&
     (dev->dsr->caps.bmme_flags & PVRDMA_BMME_FLAG_FAST_REG_WR)) {
  props->device_cap_flags |= IB_DEVICE_MEM_MGT_EXTENSIONS;
  props->max_fast_reg_page_list_len = PVRDMA_GET_CAP(dev,
    PVRDMA_MAX_FAST_REG_PAGES,
    dev->dsr->caps.max_fast_reg_page_list_len);
 }

 props->device_cap_flags |= IB_DEVICE_PORT_ACTIVE_EVENT |
       IB_DEVICE_RC_RNR_NAK_GEN;

 return 0;
}
