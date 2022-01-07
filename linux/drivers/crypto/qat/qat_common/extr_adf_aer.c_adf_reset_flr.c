
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int dummy; } ;


 int accel_to_pci_dev (struct adf_accel_dev*) ;
 int pcie_flr (int ) ;

void adf_reset_flr(struct adf_accel_dev *accel_dev)
{
 pcie_flr(accel_to_pci_dev(accel_dev));
}
