
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_vf {scalar_t__ qp_grp_ref_cnt; struct usnic_ib_pd* pd; int vnic; int lock; } ;
struct usnic_ib_qp_grp {struct usnic_ib_vf* vf; } ;
struct usnic_ib_pd {int umem_pd; } ;
struct pci_dev {int dev; } ;


 int WARN_ON (int) ;
 int lockdep_assert_held (int *) ;
 int pci_name (struct pci_dev*) ;
 int usnic_err (char*,int ) ;
 int usnic_uiom_attach_dev_to_pd (int ,int *) ;
 struct pci_dev* usnic_vnic_get_pdev (int ) ;

__attribute__((used)) static int qp_grp_and_vf_bind(struct usnic_ib_vf *vf,
    struct usnic_ib_pd *pd,
    struct usnic_ib_qp_grp *qp_grp)
{
 int err;
 struct pci_dev *pdev;

 lockdep_assert_held(&vf->lock);

 pdev = usnic_vnic_get_pdev(vf->vnic);
 if (vf->qp_grp_ref_cnt == 0) {
  err = usnic_uiom_attach_dev_to_pd(pd->umem_pd, &pdev->dev);
  if (err) {
   usnic_err("Failed to attach %s to domain\n",
     pci_name(pdev));
   return err;
  }
  vf->pd = pd;
 }
 vf->qp_grp_ref_cnt++;

 WARN_ON(vf->pd != pd);
 qp_grp->vf = vf;

 return 0;
}
