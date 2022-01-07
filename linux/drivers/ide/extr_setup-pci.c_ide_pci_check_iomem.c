
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct pci_dev {int dummy; } ;
struct ide_port_info {int dummy; } ;


 int EINVAL ;
 int IORESOURCE_IO ;
 int pci_resource_flags (struct pci_dev*,int) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;

__attribute__((used)) static int ide_pci_check_iomem(struct pci_dev *dev, const struct ide_port_info *d,
          int bar)
{
 ulong flags = pci_resource_flags(dev, bar);


 if (!flags || pci_resource_len(dev, bar) == 0)
  return 0;


 if (flags & IORESOURCE_IO)
  return 0;


 return -EINVAL;
}
