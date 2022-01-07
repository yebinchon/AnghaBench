
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vfdev; int * pf2vf_wq; } ;
struct nitrox_device {TYPE_1__ iov; } ;


 int destroy_workqueue (int *) ;
 int disable_pf2vf_mbox_interrupts (struct nitrox_device*) ;
 int kfree (int *) ;

void nitrox_mbox_cleanup(struct nitrox_device *ndev)
{

 disable_pf2vf_mbox_interrupts(ndev);

 if (ndev->iov.pf2vf_wq)
  destroy_workqueue(ndev->iov.pf2vf_wq);

 kfree(ndev->iov.vfdev);
 ndev->iov.pf2vf_wq = ((void*)0);
 ndev->iov.vfdev = ((void*)0);
}
