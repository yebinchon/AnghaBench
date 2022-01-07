
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_device {int sc_dev; } ;
struct i40iw_ceq {int msix_idx; struct i40iw_device* iwdev; } ;


 int i40iw_enable_intr (int *,int ) ;
 int i40iw_process_ceq (struct i40iw_device*,struct i40iw_ceq*) ;

__attribute__((used)) static void i40iw_ceq_dpc(unsigned long data)
{
 struct i40iw_ceq *iwceq = (struct i40iw_ceq *)data;
 struct i40iw_device *iwdev = iwceq->iwdev;

 i40iw_process_ceq(iwdev, iwceq);
 i40iw_enable_intr(&iwdev->sc_dev, iwceq->msix_idx);
}
