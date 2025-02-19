
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct i40iw_msix_vector {int idx; int irq; } ;
struct TYPE_5__ {int max_ceqs; } ;
struct TYPE_6__ {int ceq_valid; TYPE_2__ hmc_fpm_misc; } ;
struct i40iw_device {TYPE_3__ sc_dev; struct i40iw_ceq* ceqlist; int ceqs_count; struct i40iw_msix_vector* iw_msixtbl; scalar_t__ msix_shared; int msix_count; int iw_qvlist; } ;
struct i40iw_ceq {int msix_idx; int irq; } ;
struct i40e_info {TYPE_1__* ops; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_4__ {int (* setup_qvlist ) (struct i40e_info*,int *,int ) ;} ;


 int GFP_KERNEL ;
 int I40IW_ERR_BAD_PTR ;
 int I40IW_ERR_NO_MEMORY ;
 int i40iw_client ;
 int i40iw_configure_ceq_vector (struct i40iw_device*,struct i40iw_ceq*,size_t,struct i40iw_msix_vector*) ;
 int i40iw_create_ceq (struct i40iw_device*,struct i40iw_ceq*,size_t) ;
 int i40iw_destroy_ceq (struct i40iw_device*,struct i40iw_ceq*) ;
 int i40iw_enable_intr (TYPE_3__*,int ) ;
 int i40iw_pr_err (char*,int) ;
 struct i40iw_ceq* kcalloc (size_t,int,int ) ;
 int kfree (struct i40iw_ceq*) ;
 size_t min (int ,int ) ;
 int stub1 (struct i40e_info*,int *,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_setup_ceqs(struct i40iw_device *iwdev,
            struct i40e_info *ldev)
{
 u32 i;
 u32 ceq_id;
 struct i40iw_ceq *iwceq;
 struct i40iw_msix_vector *msix_vec;
 enum i40iw_status_code status = 0;
 u32 num_ceqs;

 if (ldev && ldev->ops && ldev->ops->setup_qvlist) {
  status = ldev->ops->setup_qvlist(ldev, &i40iw_client,
       iwdev->iw_qvlist);
  if (status)
   goto exit;
 } else {
  status = I40IW_ERR_BAD_PTR;
  goto exit;
 }

 num_ceqs = min(iwdev->msix_count, iwdev->sc_dev.hmc_fpm_misc.max_ceqs);
 iwdev->ceqlist = kcalloc(num_ceqs, sizeof(*iwdev->ceqlist), GFP_KERNEL);
 if (!iwdev->ceqlist) {
  status = I40IW_ERR_NO_MEMORY;
  goto exit;
 }
 i = (iwdev->msix_shared) ? 0 : 1;
 for (ceq_id = 0; i < num_ceqs; i++, ceq_id++) {
  iwceq = &iwdev->ceqlist[ceq_id];
  status = i40iw_create_ceq(iwdev, iwceq, ceq_id);
  if (status) {
   i40iw_pr_err("create ceq status = %d\n", status);
   break;
  }

  msix_vec = &iwdev->iw_msixtbl[i];
  iwceq->irq = msix_vec->irq;
  iwceq->msix_idx = msix_vec->idx;
  status = i40iw_configure_ceq_vector(iwdev, iwceq, ceq_id, msix_vec);
  if (status) {
   i40iw_destroy_ceq(iwdev, iwceq);
   break;
  }
  i40iw_enable_intr(&iwdev->sc_dev, msix_vec->idx);
  iwdev->ceqs_count++;
 }
exit:
 if (status && !iwdev->ceqs_count) {
  kfree(iwdev->ceqlist);
  iwdev->ceqlist = ((void*)0);
  return status;
 } else {
  iwdev->sc_dev.ceq_valid = 1;
  return 0;
 }

}
