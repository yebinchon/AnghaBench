
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int interface_id; } ;
union ib_gid {TYPE_3__ global; int * raw; } ;
struct usnic_ib_dev {int* vf_res_cnt; int usdev_lock; int vf_cnt; TYPE_4__* pdev; TYPE_2__* ufdev; TYPE_5__* netdev; } ;
struct ib_udata {scalar_t__ outlen; scalar_t__ inlen; } ;
struct ib_device_attr {int max_qp; int device_cap_flags; int max_cq; scalar_t__ max_map_per_fmr; scalar_t__ max_total_mcast_qp_attach; scalar_t__ max_mcast_qp_attach; scalar_t__ max_mcast_grp; scalar_t__ max_fast_reg_page_list_len; scalar_t__ max_srq_sge; scalar_t__ max_srq_wr; scalar_t__ max_srq; scalar_t__ max_res_rd_atom; scalar_t__ max_qp_init_rd_atom; scalar_t__ max_qp_rd_atom; int atomic_cap; int masked_atomic_cap; scalar_t__ max_pkeys; scalar_t__ local_ca_ack_delay; int max_mr; int max_pd; int hw_ver; int vendor_part_id; int vendor_id; int page_size_cap; int max_mr_size; int fw_ver; int sys_image_guid; } ;
struct ib_device {int dummy; } ;
struct ethtool_drvinfo {int * fw_version; } ;
struct TYPE_10__ {TYPE_1__* ethtool_ops; } ;
struct TYPE_9__ {int subsystem_device; } ;
struct TYPE_7__ {int inaddr; int mac; } ;
struct TYPE_6__ {int (* get_drvinfo ) (TYPE_5__*,struct ethtool_drvinfo*) ;} ;


 int EINVAL ;
 int IB_ATOMIC_NONE ;
 int IB_DEVICE_BLOCK_MULTICAST_LOOPBACK ;
 int IB_DEVICE_PORT_ACTIVE_EVENT ;
 int IB_DEVICE_SYS_IMAGE_GUID ;
 int PCI_DEVICE_ID_CISCO_VIC_USPACE_NIC ;
 int PCI_VENDOR_ID_CISCO ;
 int USNIC_UIOM_MAX_MR_CNT ;
 int USNIC_UIOM_MAX_MR_SIZE ;
 int USNIC_UIOM_MAX_PD_CNT ;
 int USNIC_UIOM_PAGE_SIZE ;
 size_t USNIC_VNIC_RES_TYPE_CQ ;
 size_t USNIC_VNIC_RES_TYPE_RQ ;
 size_t USNIC_VNIC_RES_TYPE_WQ ;
 int kref_read (int *) ;
 int max (int,int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct ib_device_attr*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_5__*,struct ethtool_drvinfo*) ;
 struct usnic_ib_dev* to_usdev (struct ib_device*) ;
 int usnic_dbg (char*) ;
 int usnic_ib_fw_string_to_u64 (int *,int *) ;
 int usnic_mac_ip_to_gid (int ,int ,int *) ;

int usnic_ib_query_device(struct ib_device *ibdev,
     struct ib_device_attr *props,
     struct ib_udata *uhw)
{
 struct usnic_ib_dev *us_ibdev = to_usdev(ibdev);
 union ib_gid gid;
 struct ethtool_drvinfo info;
 int qp_per_vf;

 usnic_dbg("\n");
 if (uhw->inlen || uhw->outlen)
  return -EINVAL;

 mutex_lock(&us_ibdev->usdev_lock);
 us_ibdev->netdev->ethtool_ops->get_drvinfo(us_ibdev->netdev, &info);
 memset(props, 0, sizeof(*props));
 usnic_mac_ip_to_gid(us_ibdev->ufdev->mac, us_ibdev->ufdev->inaddr,
   &gid.raw[0]);
 memcpy(&props->sys_image_guid, &gid.global.interface_id,
  sizeof(gid.global.interface_id));
 usnic_ib_fw_string_to_u64(&info.fw_version[0], &props->fw_ver);
 props->max_mr_size = USNIC_UIOM_MAX_MR_SIZE;
 props->page_size_cap = USNIC_UIOM_PAGE_SIZE;
 props->vendor_id = PCI_VENDOR_ID_CISCO;
 props->vendor_part_id = PCI_DEVICE_ID_CISCO_VIC_USPACE_NIC;
 props->hw_ver = us_ibdev->pdev->subsystem_device;
 qp_per_vf = max(us_ibdev->vf_res_cnt[USNIC_VNIC_RES_TYPE_WQ],
   us_ibdev->vf_res_cnt[USNIC_VNIC_RES_TYPE_RQ]);
 props->max_qp = qp_per_vf *
  kref_read(&us_ibdev->vf_cnt);
 props->device_cap_flags = IB_DEVICE_PORT_ACTIVE_EVENT |
  IB_DEVICE_SYS_IMAGE_GUID | IB_DEVICE_BLOCK_MULTICAST_LOOPBACK;
 props->max_cq = us_ibdev->vf_res_cnt[USNIC_VNIC_RES_TYPE_CQ] *
  kref_read(&us_ibdev->vf_cnt);
 props->max_pd = USNIC_UIOM_MAX_PD_CNT;
 props->max_mr = USNIC_UIOM_MAX_MR_CNT;
 props->local_ca_ack_delay = 0;
 props->max_pkeys = 0;
 props->atomic_cap = IB_ATOMIC_NONE;
 props->masked_atomic_cap = props->atomic_cap;
 props->max_qp_rd_atom = 0;
 props->max_qp_init_rd_atom = 0;
 props->max_res_rd_atom = 0;
 props->max_srq = 0;
 props->max_srq_wr = 0;
 props->max_srq_sge = 0;
 props->max_fast_reg_page_list_len = 0;
 props->max_mcast_grp = 0;
 props->max_mcast_qp_attach = 0;
 props->max_total_mcast_qp_attach = 0;
 props->max_map_per_fmr = 0;


 mutex_unlock(&us_ibdev->usdev_lock);

 return 0;
}
