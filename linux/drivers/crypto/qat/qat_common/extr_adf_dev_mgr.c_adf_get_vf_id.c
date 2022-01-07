
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adf_accel_dev {int dummy; } ;
struct TYPE_2__ {int devfn; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 TYPE_1__* accel_to_pci_dev (struct adf_accel_dev*) ;

__attribute__((used)) static int adf_get_vf_id(struct adf_accel_dev *vf)
{
 return ((7 * (PCI_SLOT(accel_to_pci_dev(vf)->devfn) - 1)) +
  PCI_FUNC(accel_to_pci_dev(vf)->devfn) +
  (PCI_SLOT(accel_to_pci_dev(vf)->devfn) - 1));
}
