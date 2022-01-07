
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int irq_name; } ;
struct adf_accel_dev {TYPE_1__ vf; } ;


 struct pci_dev* accel_to_pci_dev (struct adf_accel_dev*) ;
 int kfree (int ) ;
 int pci_disable_msi (struct pci_dev*) ;

__attribute__((used)) static void adf_disable_msi(struct adf_accel_dev *accel_dev)
{
 struct pci_dev *pdev = accel_to_pci_dev(accel_dev);

 kfree(accel_dev->vf.irq_name);
 pci_disable_msi(pdev);
}
