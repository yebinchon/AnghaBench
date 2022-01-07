
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_8__ {int fw_ver; int device_cap_flags; int vendor_id; int max_map_per_fmr; int max_qp_init_rd_atom; int max_mcast_grp; int max_mcast_qp_attach; int max_total_mcast_qp_attach; int max_pkeys; int atomic_cap; int max_srq_sge; int max_srq_wr; int max_srq; int max_qp_rd_atom; int max_pd; int max_cqe; int max_ah; int max_cq; void* max_sge_rd; void* max_recv_sge; void* max_send_sge; scalar_t__ max_qp_wr; int max_qp; int max_fast_reg_page_list_len; int max_mr_size; int sys_image_guid; int hw_ver; int vendor_part_id; int page_size_cap; } ;
struct TYPE_7__ {TYPE_4__ props; } ;
struct rvt_dev_info {TYPE_3__ dparms; } ;
struct TYPE_5__ {struct rvt_dev_info rdi; } ;
struct hfi1_devdata {int oui1; int oui2; int oui3; int minrev; TYPE_2__* pcidev; int dc8051_ver; TYPE_1__ verbs_dev; } ;
struct TYPE_6__ {int device; } ;


 int HFI1_MAX_RDMA_ATOMIC ;
 scalar_t__ HFI1_QP_WQE_INVALID ;
 int IB_ATOMIC_GLOB ;
 int IB_DEVICE_BAD_PKEY_CNTR ;
 int IB_DEVICE_BAD_QKEY_CNTR ;
 int IB_DEVICE_MEM_MGT_EXTENSIONS ;
 int IB_DEVICE_PORT_ACTIVE_EVENT ;
 int IB_DEVICE_RC_RNR_NAK_GEN ;
 int IB_DEVICE_RDMA_NETDEV_OPA_VNIC ;
 int IB_DEVICE_SHUTDOWN_PORT ;
 int IB_DEVICE_SRQ_RESIZE ;
 int IB_DEVICE_SYS_IMAGE_GUID ;
 int PAGE_SIZE ;
 int U64_MAX ;
 int UINT_MAX ;
 scalar_t__ dc8051_ver_maj (int ) ;
 scalar_t__ dc8051_ver_min (int ) ;
 scalar_t__ dc8051_ver_patch (int ) ;
 int hfi1_get_npkeys (struct hfi1_devdata*) ;
 int hfi1_max_ahs ;
 int hfi1_max_cqes ;
 int hfi1_max_cqs ;
 int hfi1_max_mcast_grps ;
 int hfi1_max_mcast_qp_attached ;
 int hfi1_max_pds ;
 scalar_t__ hfi1_max_qp_wrs ;
 int hfi1_max_qps ;
 void* hfi1_max_sges ;
 int hfi1_max_srq_sges ;
 int hfi1_max_srq_wrs ;
 int hfi1_max_srqs ;
 int ib_hfi1_sys_image_guid ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static void hfi1_fill_device_attr(struct hfi1_devdata *dd)
{
 struct rvt_dev_info *rdi = &dd->verbs_dev.rdi;
 u32 ver = dd->dc8051_ver;

 memset(&rdi->dparms.props, 0, sizeof(rdi->dparms.props));

 rdi->dparms.props.fw_ver = ((u64)(dc8051_ver_maj(ver)) << 32) |
  ((u64)(dc8051_ver_min(ver)) << 16) |
  (u64)dc8051_ver_patch(ver);

 rdi->dparms.props.device_cap_flags = IB_DEVICE_BAD_PKEY_CNTR |
   IB_DEVICE_BAD_QKEY_CNTR | IB_DEVICE_SHUTDOWN_PORT |
   IB_DEVICE_SYS_IMAGE_GUID | IB_DEVICE_RC_RNR_NAK_GEN |
   IB_DEVICE_PORT_ACTIVE_EVENT | IB_DEVICE_SRQ_RESIZE |
   IB_DEVICE_MEM_MGT_EXTENSIONS |
   IB_DEVICE_RDMA_NETDEV_OPA_VNIC;
 rdi->dparms.props.page_size_cap = PAGE_SIZE;
 rdi->dparms.props.vendor_id = dd->oui1 << 16 | dd->oui2 << 8 | dd->oui3;
 rdi->dparms.props.vendor_part_id = dd->pcidev->device;
 rdi->dparms.props.hw_ver = dd->minrev;
 rdi->dparms.props.sys_image_guid = ib_hfi1_sys_image_guid;
 rdi->dparms.props.max_mr_size = U64_MAX;
 rdi->dparms.props.max_fast_reg_page_list_len = UINT_MAX;
 rdi->dparms.props.max_qp = hfi1_max_qps;
 rdi->dparms.props.max_qp_wr =
  (hfi1_max_qp_wrs >= HFI1_QP_WQE_INVALID ?
   HFI1_QP_WQE_INVALID - 1 : hfi1_max_qp_wrs);
 rdi->dparms.props.max_send_sge = hfi1_max_sges;
 rdi->dparms.props.max_recv_sge = hfi1_max_sges;
 rdi->dparms.props.max_sge_rd = hfi1_max_sges;
 rdi->dparms.props.max_cq = hfi1_max_cqs;
 rdi->dparms.props.max_ah = hfi1_max_ahs;
 rdi->dparms.props.max_cqe = hfi1_max_cqes;
 rdi->dparms.props.max_map_per_fmr = 32767;
 rdi->dparms.props.max_pd = hfi1_max_pds;
 rdi->dparms.props.max_qp_rd_atom = HFI1_MAX_RDMA_ATOMIC;
 rdi->dparms.props.max_qp_init_rd_atom = 255;
 rdi->dparms.props.max_srq = hfi1_max_srqs;
 rdi->dparms.props.max_srq_wr = hfi1_max_srq_wrs;
 rdi->dparms.props.max_srq_sge = hfi1_max_srq_sges;
 rdi->dparms.props.atomic_cap = IB_ATOMIC_GLOB;
 rdi->dparms.props.max_pkeys = hfi1_get_npkeys(dd);
 rdi->dparms.props.max_mcast_grp = hfi1_max_mcast_grps;
 rdi->dparms.props.max_mcast_qp_attach = hfi1_max_mcast_qp_attached;
 rdi->dparms.props.max_total_mcast_qp_attach =
     rdi->dparms.props.max_mcast_qp_attach *
     rdi->dparms.props.max_mcast_grp;
}
