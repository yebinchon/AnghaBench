
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct ib_udata {scalar_t__ outlen; scalar_t__ inlen; } ;
struct ib_device_attr {int max_map_per_fmr; int max_fast_reg_page_list_len; int atomic_cap; int max_qp_rd_atom; int max_qp_init_rd_atom; int max_sge_rd; scalar_t__ max_pd; scalar_t__ max_mr; int max_cqe; scalar_t__ max_cq; void* max_recv_sge; void* max_send_sge; int max_qp_wr; scalar_t__ max_qp; int max_mr_size; scalar_t__ hw_ver; int vendor_part_id; int vendor_id; int device_cap_flags; int fw_ver; int sys_image_guid; } ;
struct ib_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ hw_rev; } ;
struct i40iw_device {scalar_t__ used_pds; scalar_t__ max_pd; scalar_t__ used_mrs; scalar_t__ max_mr; int max_cqe; scalar_t__ used_cqs; scalar_t__ max_cq; scalar_t__ used_qps; scalar_t__ max_qp; TYPE_4__ sc_dev; TYPE_3__* ldev; int device_cap_flags; TYPE_1__* netdev; } ;
struct TYPE_7__ {TYPE_2__* pcidev; } ;
struct TYPE_6__ {int device; int vendor; } ;
struct TYPE_5__ {int dev_addr; } ;


 int EINVAL ;
 int I40IW_FW_VERSION ;
 int I40IW_MAX_IRD_SIZE ;
 int I40IW_MAX_OUTBOUND_MESSAGE_SIZE ;
 int I40IW_MAX_PAGES_PER_FMR ;
 int I40IW_MAX_QP_WRS ;
 int I40IW_MAX_SGE_RD ;
 void* I40IW_MAX_WQ_FRAGMENT_COUNT ;
 int IB_ATOMIC_NONE ;
 int ether_addr_copy (int *,int ) ;
 int memset (struct ib_device_attr*,int ,int) ;
 struct i40iw_device* to_iwdev (struct ib_device*) ;

__attribute__((used)) static int i40iw_query_device(struct ib_device *ibdev,
         struct ib_device_attr *props,
         struct ib_udata *udata)
{
 struct i40iw_device *iwdev = to_iwdev(ibdev);

 if (udata->inlen || udata->outlen)
  return -EINVAL;
 memset(props, 0, sizeof(*props));
 ether_addr_copy((u8 *)&props->sys_image_guid, iwdev->netdev->dev_addr);
 props->fw_ver = I40IW_FW_VERSION;
 props->device_cap_flags = iwdev->device_cap_flags;
 props->vendor_id = iwdev->ldev->pcidev->vendor;
 props->vendor_part_id = iwdev->ldev->pcidev->device;
 props->hw_ver = (u32)iwdev->sc_dev.hw_rev;
 props->max_mr_size = I40IW_MAX_OUTBOUND_MESSAGE_SIZE;
 props->max_qp = iwdev->max_qp - iwdev->used_qps;
 props->max_qp_wr = I40IW_MAX_QP_WRS;
 props->max_send_sge = I40IW_MAX_WQ_FRAGMENT_COUNT;
 props->max_recv_sge = I40IW_MAX_WQ_FRAGMENT_COUNT;
 props->max_cq = iwdev->max_cq - iwdev->used_cqs;
 props->max_cqe = iwdev->max_cqe;
 props->max_mr = iwdev->max_mr - iwdev->used_mrs;
 props->max_pd = iwdev->max_pd - iwdev->used_pds;
 props->max_sge_rd = I40IW_MAX_SGE_RD;
 props->max_qp_rd_atom = I40IW_MAX_IRD_SIZE;
 props->max_qp_init_rd_atom = props->max_qp_rd_atom;
 props->atomic_cap = IB_ATOMIC_NONE;
 props->max_map_per_fmr = 1;
 props->max_fast_reg_page_list_len = I40IW_MAX_PAGES_PER_FMR;
 return 0;
}
