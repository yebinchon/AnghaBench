
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int r600_pcie_gart_disable (struct radeon_device*) ;
 int radeon_gart_fini (struct radeon_device*) ;
 int radeon_gart_table_vram_free (struct radeon_device*) ;

__attribute__((used)) static void r600_pcie_gart_fini(struct radeon_device *rdev)
{
 radeon_gart_fini(rdev);
 r600_pcie_gart_disable(rdev);
 radeon_gart_table_vram_free(rdev);
}
