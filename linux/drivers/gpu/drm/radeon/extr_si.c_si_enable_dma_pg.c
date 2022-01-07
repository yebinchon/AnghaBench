
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int pg_flags; } ;


 int DMA_PG ;
 int PG_CNTL_ENABLE ;
 int RADEON_PG_SUPPORT_SDMA ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void si_enable_dma_pg(struct radeon_device *rdev, bool enable)
{
 u32 data, orig;

 orig = data = RREG32(DMA_PG);
 if (enable && (rdev->pg_flags & RADEON_PG_SUPPORT_SDMA))
  data |= PG_CNTL_ENABLE;
 else
  data &= ~PG_CNTL_ENABLE;
 if (orig != data)
  WREG32(DMA_PG, data);
}
