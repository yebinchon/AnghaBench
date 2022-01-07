
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc1200_saved_state {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ide_pci_init_one (struct pci_dev*,int *,struct sc1200_saved_state*) ;
 int kfree (struct sc1200_saved_state*) ;
 struct sc1200_saved_state* kmalloc (int,int ) ;
 int sc1200_chipset ;

__attribute__((used)) static int sc1200_init_one(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct sc1200_saved_state *ss = ((void*)0);
 int rc;






 rc = ide_pci_init_one(dev, &sc1200_chipset, ss);
 if (rc)
  kfree(ss);

 return rc;
}
