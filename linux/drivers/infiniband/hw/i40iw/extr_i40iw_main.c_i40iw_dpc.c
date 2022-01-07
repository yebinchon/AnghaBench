
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_device {TYPE_1__* iw_msixtbl; int sc_dev; int ceqlist; scalar_t__ msix_shared; } ;
struct TYPE_2__ {int idx; } ;


 int i40iw_enable_intr (int *,int ) ;
 int i40iw_process_aeq (struct i40iw_device*) ;
 int i40iw_process_ceq (struct i40iw_device*,int ) ;

__attribute__((used)) static void i40iw_dpc(unsigned long data)
{
 struct i40iw_device *iwdev = (struct i40iw_device *)data;

 if (iwdev->msix_shared)
  i40iw_process_ceq(iwdev, iwdev->ceqlist);
 i40iw_process_aeq(iwdev);
 i40iw_enable_intr(&iwdev->sc_dev, iwdev->iw_msixtbl[0].idx);
}
