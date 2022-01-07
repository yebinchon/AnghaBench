
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nitrox_vfdev {int vfno; } ;
struct TYPE_2__ {int num_vfs; struct nitrox_vfdev* vfdev; int pf2vf_wq; } ;
struct nitrox_device {TYPE_1__ iov; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_workqueue (char*,int ,int ) ;
 int enable_pf2vf_mbox_interrupts (struct nitrox_device*) ;
 struct nitrox_vfdev* kcalloc (int,int,int ) ;
 int kfree (struct nitrox_vfdev*) ;

int nitrox_mbox_init(struct nitrox_device *ndev)
{
 struct nitrox_vfdev *vfdev;
 int i;

 ndev->iov.vfdev = kcalloc(ndev->iov.num_vfs,
      sizeof(struct nitrox_vfdev), GFP_KERNEL);
 if (!ndev->iov.vfdev)
  return -ENOMEM;

 for (i = 0; i < ndev->iov.num_vfs; i++) {
  vfdev = ndev->iov.vfdev + i;
  vfdev->vfno = i;
 }


 ndev->iov.pf2vf_wq = alloc_workqueue("nitrox_pf2vf", 0, 0);
 if (!ndev->iov.pf2vf_wq) {
  kfree(ndev->iov.vfdev);
  return -ENOMEM;
 }

 enable_pf2vf_mbox_interrupts(ndev);

 return 0;
}
