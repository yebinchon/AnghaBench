
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i40iw_msix_vector {int irq; } ;
struct i40iw_device {int dpc_tasklet; int msix_shared; struct i40iw_msix_vector* iw_msixtbl; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_CONFIG ;
 int i40iw_dpc ;
 int i40iw_irq_handler ;
 int i40iw_pr_err (char*) ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct i40iw_device*) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static enum i40iw_status_code i40iw_configure_aeq_vector(struct i40iw_device *iwdev)
{
 struct i40iw_msix_vector *msix_vec = iwdev->iw_msixtbl;
 u32 ret = 0;

 if (!iwdev->msix_shared) {
  tasklet_init(&iwdev->dpc_tasklet, i40iw_dpc, (unsigned long)iwdev);
  ret = request_irq(msix_vec->irq, i40iw_irq_handler, 0, "i40iw", iwdev);
 }
 if (ret) {
  i40iw_pr_err("aeq irq config fail\n");
  return I40IW_ERR_CONFIG;
 }

 return 0;
}
