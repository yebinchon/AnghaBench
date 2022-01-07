
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_ib_qp_grp {TYPE_1__* vf; } ;
struct usnic_ib_pd {int umem_pd; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {scalar_t__ qp_grp_ref_cnt; struct usnic_ib_pd* pd; int vnic; int lock; } ;


 int lockdep_assert_held (int *) ;
 int usnic_uiom_detach_dev_from_pd (int ,int *) ;
 struct pci_dev* usnic_vnic_get_pdev (int ) ;

__attribute__((used)) static void qp_grp_and_vf_unbind(struct usnic_ib_qp_grp *qp_grp)
{
 struct pci_dev *pdev;
 struct usnic_ib_pd *pd;

 lockdep_assert_held(&qp_grp->vf->lock);

 pd = qp_grp->vf->pd;
 pdev = usnic_vnic_get_pdev(qp_grp->vf->vnic);
 if (--qp_grp->vf->qp_grp_ref_cnt == 0) {
  qp_grp->vf->pd = ((void*)0);
  usnic_uiom_detach_dev_from_pd(pd->umem_pd, &pdev->dev);
 }
 qp_grp->vf = ((void*)0);
}
