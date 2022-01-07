
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ide_port_info {int dummy; } ;


 int ide_pci_init_two (struct pci_dev*,int *,struct ide_port_info const*,void*) ;

int ide_pci_init_one(struct pci_dev *dev, const struct ide_port_info *d,
       void *priv)
{
 return ide_pci_init_two(dev, ((void*)0), d, priv);
}
