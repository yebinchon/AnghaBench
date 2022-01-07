
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ib_udata {int dummy; } ;
struct ib_device_attr {int device_cap_flags; int max_sge_rd; int max_pkeys; int max_fast_reg_page_list_len; int max_srq_sge; int max_srq_wr; int max_srq; int local_ca_ack_delay; int atomic_cap; int max_qp_init_rd_atom; int max_qp_rd_atom; int max_pd; int max_mr; int max_cqe; int max_cq; int max_recv_sge; int max_send_sge; int max_qp_wr; int max_qp; int hw_ver; int vendor_part_id; int vendor_id; int page_size_cap; scalar_t__ max_mr_size; int sys_image_guid; int fw_ver; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int flags; int max_srq_sges; int max_srq_wrs; int max_srqs; int local_ca_ack_delay; int max_qp_init_rdma; int max_qp_dest_rdma; int num_pds; int num_mtpts; int max_cqes; int num_cqs; int max_rq_sg; int max_sq_sg; int max_wqes; int num_qps; int page_size_cap; int fw_ver; } ;
struct hns_roce_dev {TYPE_1__ caps; int hw_rev; int vendor_part_id; int vendor_id; int sys_image_guid; } ;


 int HNS_ROCE_CAP_FLAG_ATOMIC ;
 int HNS_ROCE_CAP_FLAG_FRMR ;
 int HNS_ROCE_CAP_FLAG_SRQ ;
 int HNS_ROCE_FRMR_MAX_PA ;
 int IB_ATOMIC_HCA ;
 int IB_ATOMIC_NONE ;
 int IB_DEVICE_MEM_MGT_EXTENSIONS ;
 int IB_DEVICE_PORT_ACTIVE_EVENT ;
 int IB_DEVICE_RC_RNR_NAK_GEN ;
 int cpu_to_be64 (int ) ;
 int memset (struct ib_device_attr*,int ,int) ;
 struct hns_roce_dev* to_hr_dev (struct ib_device*) ;

__attribute__((used)) static int hns_roce_query_device(struct ib_device *ib_dev,
     struct ib_device_attr *props,
     struct ib_udata *uhw)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ib_dev);

 memset(props, 0, sizeof(*props));

 props->fw_ver = hr_dev->caps.fw_ver;
 props->sys_image_guid = cpu_to_be64(hr_dev->sys_image_guid);
 props->max_mr_size = (u64)(~(0ULL));
 props->page_size_cap = hr_dev->caps.page_size_cap;
 props->vendor_id = hr_dev->vendor_id;
 props->vendor_part_id = hr_dev->vendor_part_id;
 props->hw_ver = hr_dev->hw_rev;
 props->max_qp = hr_dev->caps.num_qps;
 props->max_qp_wr = hr_dev->caps.max_wqes;
 props->device_cap_flags = IB_DEVICE_PORT_ACTIVE_EVENT |
      IB_DEVICE_RC_RNR_NAK_GEN;
 props->max_send_sge = hr_dev->caps.max_sq_sg;
 props->max_recv_sge = hr_dev->caps.max_rq_sg;
 props->max_sge_rd = 1;
 props->max_cq = hr_dev->caps.num_cqs;
 props->max_cqe = hr_dev->caps.max_cqes;
 props->max_mr = hr_dev->caps.num_mtpts;
 props->max_pd = hr_dev->caps.num_pds;
 props->max_qp_rd_atom = hr_dev->caps.max_qp_dest_rdma;
 props->max_qp_init_rd_atom = hr_dev->caps.max_qp_init_rdma;
 props->atomic_cap = hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_ATOMIC ?
       IB_ATOMIC_HCA : IB_ATOMIC_NONE;
 props->max_pkeys = 1;
 props->local_ca_ack_delay = hr_dev->caps.local_ca_ack_delay;
 if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_SRQ) {
  props->max_srq = hr_dev->caps.max_srqs;
  props->max_srq_wr = hr_dev->caps.max_srq_wrs;
  props->max_srq_sge = hr_dev->caps.max_srq_sges;
 }

 if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_FRMR) {
  props->device_cap_flags |= IB_DEVICE_MEM_MGT_EXTENSIONS;
  props->max_fast_reg_page_list_len = HNS_ROCE_FRMR_MAX_PA;
 }

 return 0;
}
