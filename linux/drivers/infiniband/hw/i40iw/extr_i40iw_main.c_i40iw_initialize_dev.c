
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vsi_info ;
typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct i40iw_vsi_stats_info {int is_pf; int exception_lan_queue; int stats_initialize; void* pestat; int fcn_id; struct i40iw_vsi_stats_info* params; void* back_vsi; struct i40iw_sc_dev* dev; int vchnl_send; scalar_t__* qs_handle_list; scalar_t__ mtu; int debug_mask; TYPE_2__* hw; int bar0; int hmc_fn_id; int fpm_commit_buf; int fpm_commit_buf_pa; int fpm_query_buf; int fpm_query_buf_pa; } ;
struct i40iw_vsi_init_info {int is_pf; int exception_lan_queue; int stats_initialize; void* pestat; int fcn_id; struct i40iw_vsi_init_info* params; void* back_vsi; struct i40iw_sc_dev* dev; int vchnl_send; scalar_t__* qs_handle_list; scalar_t__ mtu; int debug_mask; TYPE_2__* hw; int bar0; int hmc_fn_id; int fpm_commit_buf; int fpm_commit_buf_pa; int fpm_query_buf; int fpm_query_buf_pa; } ;
struct i40iw_sc_dev {scalar_t__ is_pf; TYPE_1__* hmc_info; } ;
struct i40iw_l2params {int is_pf; int exception_lan_queue; int stats_initialize; void* pestat; int fcn_id; struct i40iw_l2params* params; void* back_vsi; struct i40iw_sc_dev* dev; int vchnl_send; scalar_t__* qs_handle_list; scalar_t__ mtu; int debug_mask; TYPE_2__* hw; int bar0; int hmc_fn_id; int fpm_commit_buf; int fpm_commit_buf_pa; int fpm_query_buf; int fpm_query_buf_pa; } ;
struct i40iw_hmc_pble_rsrc {int dummy; } ;
struct i40iw_hmc_obj_info {int dummy; } ;
struct i40iw_hmc_info {int dummy; } ;
struct i40iw_dma_mem {int va; int pa; } ;
struct i40iw_device_init_info {int is_pf; int exception_lan_queue; int stats_initialize; void* pestat; int fcn_id; struct i40iw_device_init_info* params; void* back_vsi; struct i40iw_sc_dev* dev; int vchnl_send; scalar_t__* qs_handle_list; scalar_t__ mtu; int debug_mask; TYPE_2__* hw; int bar0; int hmc_fn_id; int fpm_commit_buf; int fpm_commit_buf_pa; int fpm_query_buf; int fpm_query_buf_pa; } ;
struct TYPE_6__ {struct i40iw_hmc_obj_info* hmc_obj; } ;
struct TYPE_7__ {TYPE_1__ hmc; } ;
struct i40iw_device {int dcb; int * hmc_info_mem; int vsi; struct i40iw_sc_dev sc_dev; TYPE_2__ hw; struct i40iw_hmc_pble_rsrc* pble_rsrc; } ;
struct TYPE_9__ {TYPE_3__* prio_qos; } ;
struct TYPE_10__ {TYPE_4__ qos; scalar_t__ mtu; } ;
struct i40e_info {int fid; TYPE_5__ params; int hw_addr; scalar_t__ ftype; } ;
typedef int stats_info ;
typedef int l2params ;
typedef int info ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_8__ {scalar_t__ qs_handle; } ;


 int GFP_KERNEL ;
 size_t I40E_CLIENT_MAX_USER_PRIORITY ;
 int I40IW_COMMIT_FPM_BUF_SIZE ;
 scalar_t__ I40IW_DEFAULT_MTU ;
 int I40IW_ERR_NO_MEMORY ;
 int I40IW_FPM_COMMIT_BUF_ALIGNMENT_MASK ;
 int I40IW_FPM_QUERY_BUF_ALIGNMENT_MASK ;
 int I40IW_HMC_IW_MAX ;
 scalar_t__ I40IW_NO_QSET ;
 int I40IW_QUERY_FPM_BUF_SIZE ;
 int debug ;
 int i40iw_device_init (struct i40iw_sc_dev*,struct i40iw_vsi_stats_info*) ;
 int i40iw_obj_aligned_mem (struct i40iw_device*,struct i40iw_dma_mem*,int ,int ) ;
 int i40iw_pr_info (char*,int) ;
 int i40iw_sc_vsi_init (int *,struct i40iw_vsi_stats_info*) ;
 int i40iw_virtchnl_send ;
 int i40iw_vsi_stats_init (int *,struct i40iw_vsi_stats_info*) ;
 int kfree (int *) ;
 void* kzalloc (int,int ) ;
 int memset (struct i40iw_vsi_stats_info*,int ,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_initialize_dev(struct i40iw_device *iwdev,
         struct i40e_info *ldev)
{
 enum i40iw_status_code status;
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;
 struct i40iw_device_init_info info;
 struct i40iw_vsi_init_info vsi_info;
 struct i40iw_dma_mem mem;
 struct i40iw_l2params l2params;
 u32 size;
 struct i40iw_vsi_stats_info stats_info;
 u16 last_qset = I40IW_NO_QSET;
 u16 qset;
 u32 i;

 memset(&l2params, 0, sizeof(l2params));
 memset(&info, 0, sizeof(info));
 size = sizeof(struct i40iw_hmc_pble_rsrc) + sizeof(struct i40iw_hmc_info) +
    (sizeof(struct i40iw_hmc_obj_info) * I40IW_HMC_IW_MAX);
 iwdev->hmc_info_mem = kzalloc(size, GFP_KERNEL);
 if (!iwdev->hmc_info_mem)
  return I40IW_ERR_NO_MEMORY;

 iwdev->pble_rsrc = (struct i40iw_hmc_pble_rsrc *)iwdev->hmc_info_mem;
 dev->hmc_info = &iwdev->hw.hmc;
 dev->hmc_info->hmc_obj = (struct i40iw_hmc_obj_info *)(iwdev->pble_rsrc + 1);
 status = i40iw_obj_aligned_mem(iwdev, &mem, I40IW_QUERY_FPM_BUF_SIZE,
           I40IW_FPM_QUERY_BUF_ALIGNMENT_MASK);
 if (status)
  goto error;
 info.fpm_query_buf_pa = mem.pa;
 info.fpm_query_buf = mem.va;
 status = i40iw_obj_aligned_mem(iwdev, &mem, I40IW_COMMIT_FPM_BUF_SIZE,
           I40IW_FPM_COMMIT_BUF_ALIGNMENT_MASK);
 if (status)
  goto error;
 info.fpm_commit_buf_pa = mem.pa;
 info.fpm_commit_buf = mem.va;
 info.hmc_fn_id = ldev->fid;
 info.is_pf = (ldev->ftype) ? 0 : 1;
 info.bar0 = ldev->hw_addr;
 info.hw = &iwdev->hw;
 info.debug_mask = debug;
 l2params.mtu =
  (ldev->params.mtu) ? ldev->params.mtu : I40IW_DEFAULT_MTU;
 for (i = 0; i < I40E_CLIENT_MAX_USER_PRIORITY; i++) {
  qset = ldev->params.qos.prio_qos[i].qs_handle;
  l2params.qs_handle_list[i] = qset;
  if (last_qset == I40IW_NO_QSET)
   last_qset = qset;
  else if ((qset != last_qset) && (qset != I40IW_NO_QSET))
   iwdev->dcb = 1;
 }
 i40iw_pr_info("DCB is set/clear = %d\n", iwdev->dcb);
 info.vchnl_send = i40iw_virtchnl_send;
 status = i40iw_device_init(&iwdev->sc_dev, &info);

 if (status)
  goto error;
 memset(&vsi_info, 0, sizeof(vsi_info));
 vsi_info.dev = &iwdev->sc_dev;
 vsi_info.back_vsi = (void *)iwdev;
 vsi_info.params = &l2params;
 vsi_info.exception_lan_queue = 1;
 i40iw_sc_vsi_init(&iwdev->vsi, &vsi_info);

 if (dev->is_pf) {
  memset(&stats_info, 0, sizeof(stats_info));
  stats_info.fcn_id = ldev->fid;
  stats_info.pestat = kzalloc(sizeof(*stats_info.pestat), GFP_KERNEL);
  if (!stats_info.pestat) {
   status = I40IW_ERR_NO_MEMORY;
   goto error;
  }
  stats_info.stats_initialize = 1;
  if (stats_info.pestat)
   i40iw_vsi_stats_init(&iwdev->vsi, &stats_info);
 }
 return status;
error:
 kfree(iwdev->hmc_info_mem);
 iwdev->hmc_info_mem = ((void*)0);
 return status;
}
