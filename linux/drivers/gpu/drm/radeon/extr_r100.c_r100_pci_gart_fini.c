
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int r100_pci_gart_disable (struct radeon_device*) ;
 int radeon_gart_fini (struct radeon_device*) ;
 int radeon_gart_table_ram_free (struct radeon_device*) ;

void r100_pci_gart_fini(struct radeon_device *rdev)
{
 radeon_gart_fini(rdev);
 r100_pci_gart_disable(rdev);
 radeon_gart_table_ram_free(rdev);
}
