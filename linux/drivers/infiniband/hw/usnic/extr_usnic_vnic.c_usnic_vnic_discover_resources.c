
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usnic_vnic {TYPE_1__* bar; int vdev; int * chunks; } ;
struct pci_dev {int dummy; } ;
typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;
struct TYPE_3__ {int vaddr; int bus_addr; int len; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENODEV ;
 int IORESOURCE_MEM ;
 int USNIC_VNIC_RES_TYPE_EOL ;
 int USNIC_VNIC_RES_TYPE_MAX ;
 int iounmap (int ) ;
 int pci_iomap (struct pci_dev*,int,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int usnic_err (char*,int) ;
 int usnic_vnic_alloc_res_chunk (struct usnic_vnic*,int,int *) ;
 int usnic_vnic_free_res_chunk (int *) ;
 int vnic_dev_register (int *,struct pci_dev*,struct pci_dev*,TYPE_1__*,int) ;
 int vnic_dev_unregister (int ) ;

__attribute__((used)) static int usnic_vnic_discover_resources(struct pci_dev *pdev,
      struct usnic_vnic *vnic)
{
 enum usnic_vnic_res_type res_type;
 int i;
 int err = 0;

 for (i = 0; i < ARRAY_SIZE(vnic->bar); i++) {
  if (!(pci_resource_flags(pdev, i) & IORESOURCE_MEM))
   continue;
  vnic->bar[i].len = pci_resource_len(pdev, i);
  vnic->bar[i].vaddr = pci_iomap(pdev, i, vnic->bar[i].len);
  if (!vnic->bar[i].vaddr) {
   usnic_err("Cannot memory-map BAR %d, aborting\n",
     i);
   err = -ENODEV;
   goto out_clean_bar;
  }
  vnic->bar[i].bus_addr = pci_resource_start(pdev, i);
 }

 vnic->vdev = vnic_dev_register(((void*)0), pdev, pdev, vnic->bar,
   ARRAY_SIZE(vnic->bar));
 if (!vnic->vdev) {
  usnic_err("Failed to register device %s\n",
    pci_name(pdev));
  err = -EINVAL;
  goto out_clean_bar;
 }

 for (res_type = USNIC_VNIC_RES_TYPE_EOL + 1;
   res_type < USNIC_VNIC_RES_TYPE_MAX; res_type++) {
  err = usnic_vnic_alloc_res_chunk(vnic, res_type,
      &vnic->chunks[res_type]);
  if (err)
   goto out_clean_chunks;
 }

 return 0;

out_clean_chunks:
 for (res_type--; res_type > USNIC_VNIC_RES_TYPE_EOL; res_type--)
  usnic_vnic_free_res_chunk(&vnic->chunks[res_type]);
 vnic_dev_unregister(vnic->vdev);
out_clean_bar:
 for (i = 0; i < ARRAY_SIZE(vnic->bar); i++) {
  if (!(pci_resource_flags(pdev, i) & IORESOURCE_MEM))
   continue;
  if (!vnic->bar[i].vaddr)
   break;

  iounmap(vnic->bar[i].vaddr);
 }

 return err;
}
