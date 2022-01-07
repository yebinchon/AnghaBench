
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct i40iw_sc_dev {int hmc_info; } ;
struct TYPE_3__ {int pestat; } ;
struct i40iw_device {int init_state; int hdl; TYPE_1__ vsi; int cm_core; int reset; int pble_rsrc; int mac_ip_table_idx; int iwibdev; int iw_status; scalar_t__ param_wq; struct i40iw_sc_dev sc_dev; struct i40e_info* ldev; } ;
struct i40e_info {int dummy; } ;







 int I40IW_PUDA_RSRC_TYPE_IEQ ;
 int I40IW_PUDA_RSRC_TYPE_ILQ ;







 int destroy_workqueue (scalar_t__) ;
 int i40iw_cleanup_cm_core (int *) ;
 int i40iw_del_handler (int ) ;
 int i40iw_del_hmc_objects (struct i40iw_sc_dev*,int ,int,int ) ;
 int i40iw_del_init_mem (struct i40iw_device*) ;
 int i40iw_del_macip_entry (struct i40iw_device*,int ) ;
 int i40iw_dele_ceqs (struct i40iw_device*) ;
 int i40iw_destroy_aeq (struct i40iw_device*) ;
 int i40iw_destroy_ccq (struct i40iw_device*) ;
 int i40iw_destroy_cqp (struct i40iw_device*,int) ;
 int i40iw_destroy_pble_pool (struct i40iw_sc_dev*,int ) ;
 int i40iw_destroy_rdma_device (int ) ;
 int i40iw_find_i40e_handler (struct i40e_info*) ;
 int i40iw_port_ibevent (struct i40iw_device*) ;
 int i40iw_pr_err (char*,int) ;
 int i40iw_pr_info (char*,int) ;
 int i40iw_puda_dele_resources (TYPE_1__*,int ,int ) ;
 int i40iw_vsi_stats_free (TYPE_1__*) ;
 int kfree (int ) ;

__attribute__((used)) static void i40iw_deinit_device(struct i40iw_device *iwdev)
{
 struct i40e_info *ldev = iwdev->ldev;

 struct i40iw_sc_dev *dev = &iwdev->sc_dev;

 i40iw_pr_info("state = %d\n", iwdev->init_state);
 if (iwdev->param_wq)
  destroy_workqueue(iwdev->param_wq);

 switch (iwdev->init_state) {
 case 128:
  iwdev->iw_status = 0;
  i40iw_port_ibevent(iwdev);
  i40iw_destroy_rdma_device(iwdev->iwibdev);

 case 130:
  if (!iwdev->reset)
   i40iw_del_macip_entry(iwdev, (u8)iwdev->mac_ip_table_idx);


 case 129:
  i40iw_destroy_pble_pool(dev, iwdev->pble_rsrc);

 case 137:
  i40iw_dele_ceqs(iwdev);

 case 139:
  i40iw_destroy_aeq(iwdev);

 case 134:
  i40iw_puda_dele_resources(&iwdev->vsi, I40IW_PUDA_RSRC_TYPE_IEQ, iwdev->reset);

 case 133:
  i40iw_puda_dele_resources(&iwdev->vsi, I40IW_PUDA_RSRC_TYPE_ILQ, iwdev->reset);

 case 138:
  i40iw_destroy_ccq(iwdev);

 case 135:
  i40iw_del_hmc_objects(dev, dev->hmc_info, 1, iwdev->reset);

 case 136:
  i40iw_destroy_cqp(iwdev, 1);

 case 132:
  i40iw_cleanup_cm_core(&iwdev->cm_core);
  if (iwdev->vsi.pestat) {
   i40iw_vsi_stats_free(&iwdev->vsi);
   kfree(iwdev->vsi.pestat);
  }
  i40iw_del_init_mem(iwdev);
  break;
 case 131:

 default:
  i40iw_pr_err("bad init_state = %d\n", iwdev->init_state);
  break;
 }

 i40iw_del_handler(i40iw_find_i40e_handler(ldev));
 kfree(iwdev->hdl);
}
