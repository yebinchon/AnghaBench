
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int I2C_DIR ;
 int IOSPACE ;
 int i2c_del_adapter (int *) ;
 scalar_t__ pm_io_base ;
 int release_region (int ,int ) ;
 int vt586b_adapter ;

__attribute__((used)) static void vt586b_remove(struct pci_dev *dev)
{
 i2c_del_adapter(&vt586b_adapter);
 release_region(I2C_DIR, IOSPACE);
 pm_io_base = 0;
}
