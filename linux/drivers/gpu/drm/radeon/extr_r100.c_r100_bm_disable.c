
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int pdev; } ;


 int RADEON_BUS_CNTL ;
 int RREG32 (int ) ;
 int R_000030_BUS_CNTL ;
 int WREG32 (int ,int) ;
 int mdelay (int) ;
 int pci_clear_master (int ) ;

void r100_bm_disable(struct radeon_device *rdev)
{
 u32 tmp;


 tmp = RREG32(R_000030_BUS_CNTL);
 WREG32(R_000030_BUS_CNTL, (tmp & 0xFFFFFFFF) | 0x00000044);
 mdelay(1);
 WREG32(R_000030_BUS_CNTL, (tmp & 0xFFFFFFFF) | 0x00000042);
 mdelay(1);
 WREG32(R_000030_BUS_CNTL, (tmp & 0xFFFFFFFF) | 0x00000040);
 tmp = RREG32(RADEON_BUS_CNTL);
 mdelay(1);
 pci_clear_master(rdev->pdev);
 mdelay(1);
}
