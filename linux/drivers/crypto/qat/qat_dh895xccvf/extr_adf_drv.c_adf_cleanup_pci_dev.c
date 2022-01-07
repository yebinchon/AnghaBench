
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pci_dev; } ;
struct adf_accel_dev {TYPE_1__ accel_pci_dev; } ;


 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;

__attribute__((used)) static void adf_cleanup_pci_dev(struct adf_accel_dev *accel_dev)
{
 pci_release_regions(accel_dev->accel_pci_dev.pci_dev);
 pci_disable_device(accel_dev->accel_pci_dev.pci_dev);
}
