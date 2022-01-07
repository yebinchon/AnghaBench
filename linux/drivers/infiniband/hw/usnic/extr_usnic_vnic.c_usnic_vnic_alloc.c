
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_vnic {int res_lock; } ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct usnic_vnic* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct usnic_vnic*) ;
 struct usnic_vnic* kzalloc (int,int ) ;
 int pci_is_enabled (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int spin_lock_init (int *) ;
 int usnic_dbg (char*,int ) ;
 int usnic_err (char*,int ,...) ;
 int usnic_vnic_discover_resources (struct pci_dev*,struct usnic_vnic*) ;
 int usnic_vnic_pci_name (struct usnic_vnic*) ;

struct usnic_vnic *usnic_vnic_alloc(struct pci_dev *pdev)
{
 struct usnic_vnic *vnic;
 int err = 0;

 if (!pci_is_enabled(pdev)) {
  usnic_err("PCI dev %s is disabled\n", pci_name(pdev));
  return ERR_PTR(-EINVAL);
 }

 vnic = kzalloc(sizeof(*vnic), GFP_KERNEL);
 if (!vnic)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&vnic->res_lock);

 err = usnic_vnic_discover_resources(pdev, vnic);
 if (err) {
  usnic_err("Failed to discover %s resources with err %d\n",
    pci_name(pdev), err);
  goto out_free_vnic;
 }

 usnic_dbg("Allocated vnic for %s\n", usnic_vnic_pci_name(vnic));

 return vnic;

out_free_vnic:
 kfree(vnic);

 return ERR_PTR(err);
}
