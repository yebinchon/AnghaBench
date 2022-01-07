
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_ib_vf {struct usnic_ib_dev* vnic; int link; int lock; struct usnic_ib_dev* pf; } ;
struct TYPE_2__ {int dev; } ;
struct usnic_ib_dev {TYPE_1__ ib_dev; int usdev_lock; int * vf_res_cnt; int vf_dev_list; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;


 int DRV_NAME ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (struct usnic_ib_dev*) ;
 int PTR_ERR (struct usnic_ib_dev*) ;
 int USNIC_VNIC_RES_TYPE_EOL ;
 int USNIC_VNIC_RES_TYPE_MAX ;
 int dev_name (int *) ;
 int kfree (struct usnic_ib_vf*) ;
 struct usnic_ib_vf* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct usnic_ib_vf*) ;
 int pci_set_master (struct pci_dev*) ;
 int spin_lock_init (int *) ;
 int usnic_err (char*,int ,int) ;
 struct usnic_ib_dev* usnic_ib_discover_pf (struct usnic_ib_dev*) ;
 int usnic_ib_log_vf (struct usnic_ib_vf*) ;
 int usnic_info (char*,int ,int ) ;
 struct usnic_ib_dev* usnic_vnic_alloc (struct pci_dev*) ;
 int usnic_vnic_free (struct usnic_ib_dev*) ;
 int usnic_vnic_res_cnt (struct usnic_ib_dev*,int) ;

__attribute__((used)) static int usnic_ib_pci_probe(struct pci_dev *pdev,
    const struct pci_device_id *id)
{
 int err;
 struct usnic_ib_dev *pf;
 struct usnic_ib_vf *vf;
 enum usnic_vnic_res_type res_type;

 vf = kzalloc(sizeof(*vf), GFP_KERNEL);
 if (!vf)
  return -ENOMEM;

 err = pci_enable_device(pdev);
 if (err) {
  usnic_err("Failed to enable %s with err %d\n",
    pci_name(pdev), err);
  goto out_clean_vf;
 }

 err = pci_request_regions(pdev, DRV_NAME);
 if (err) {
  usnic_err("Failed to request region for %s with err %d\n",
    pci_name(pdev), err);
  goto out_disable_device;
 }

 pci_set_master(pdev);
 pci_set_drvdata(pdev, vf);

 vf->vnic = usnic_vnic_alloc(pdev);
 if (IS_ERR_OR_NULL(vf->vnic)) {
  err = vf->vnic ? PTR_ERR(vf->vnic) : -ENOMEM;
  usnic_err("Failed to alloc vnic for %s with err %d\n",
    pci_name(pdev), err);
  goto out_release_regions;
 }

 pf = usnic_ib_discover_pf(vf->vnic);
 if (IS_ERR_OR_NULL(pf)) {
  usnic_err("Failed to discover pf of vnic %s with err%ld\n",
    pci_name(pdev), PTR_ERR(pf));
  err = pf ? PTR_ERR(pf) : -EFAULT;
  goto out_clean_vnic;
 }

 vf->pf = pf;
 spin_lock_init(&vf->lock);
 mutex_lock(&pf->usdev_lock);
 list_add_tail(&vf->link, &pf->vf_dev_list);




 for (res_type = USNIC_VNIC_RES_TYPE_EOL+1;
   res_type < USNIC_VNIC_RES_TYPE_MAX;
   res_type++) {
  pf->vf_res_cnt[res_type] = usnic_vnic_res_cnt(vf->vnic,
        res_type);
 }

 mutex_unlock(&pf->usdev_lock);

 usnic_info("Registering usnic VF %s into PF %s\n", pci_name(pdev),
     dev_name(&pf->ib_dev.dev));
 usnic_ib_log_vf(vf);
 return 0;

out_clean_vnic:
 usnic_vnic_free(vf->vnic);
out_release_regions:
 pci_set_drvdata(pdev, ((void*)0));
 pci_clear_master(pdev);
 pci_release_regions(pdev);
out_disable_device:
 pci_disable_device(pdev);
out_clean_vf:
 kfree(vf);
 return err;
}
