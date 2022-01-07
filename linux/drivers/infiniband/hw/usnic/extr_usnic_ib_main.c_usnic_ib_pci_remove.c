
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_vf {int vnic; int link; struct usnic_ib_dev* pf; } ;
struct usnic_ib_dev {int vf_cnt; int usdev_lock; } ;
struct pci_dev {int dummy; } ;


 int kfree (struct usnic_ib_vf*) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct usnic_ib_vf* pci_get_drvdata (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int usnic_ib_undiscover_pf ;
 int usnic_info (char*,int ) ;
 int usnic_vnic_free (int ) ;

__attribute__((used)) static void usnic_ib_pci_remove(struct pci_dev *pdev)
{
 struct usnic_ib_vf *vf = pci_get_drvdata(pdev);
 struct usnic_ib_dev *pf = vf->pf;

 mutex_lock(&pf->usdev_lock);
 list_del(&vf->link);
 mutex_unlock(&pf->usdev_lock);

 kref_put(&pf->vf_cnt, usnic_ib_undiscover_pf);
 usnic_vnic_free(vf->vnic);
 pci_set_drvdata(pdev, ((void*)0));
 pci_clear_master(pdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 kfree(vf);

 usnic_info("Removed VF %s\n", pci_name(pdev));
}
