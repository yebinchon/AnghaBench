
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_4__ {int ready; scalar_t__ table_addr; } ;
struct TYPE_3__ {int gtt_size; int gtt_end; int gtt_start; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ gart; TYPE_1__ mc; } ;


 scalar_t__ CHIP_RS690 ;
 scalar_t__ CHIP_RS740 ;
 int DRM_INFO (char*,unsigned int,unsigned long long) ;
 int EINVAL ;
 int RADEON_AGP_BASE ;
 int RADEON_BUS_CNTL ;
 int RADEON_BUS_MASTER_DIS ;
 int RADEON_MC_AGP_LOCATION ;
 int REG_SET (int ,int) ;
 int RREG32 (int ) ;
 int RREG32_MC (int ) ;
 int RS480_1LEVEL_GART ;
 int RS480_AGP_ADDRESS_SPACE_SIZE ;
 int RS480_AGP_BASE_2 ;
 int RS480_AGP_MODE_CNTL ;
 int RS480_GART_BASE ;
 int RS480_GART_EN ;
 int RS480_GART_FEATURE_ID ;
 int RS480_GART_INDEX_REG_EN ;
 int RS480_GTW_LAC_EN ;
 int RS480_MC_MISC_CNTL ;
 int RS480_REQ_TYPE_SNOOP_DIS ;
 int RS480_REQ_TYPE_SNOOP_SHIFT ;
 int RS480_TLB_ENABLE ;
 int RS480_VA_SIZE_128MB ;
 int RS480_VA_SIZE_1GB ;
 int RS480_VA_SIZE_256MB ;
 int RS480_VA_SIZE_2GB ;
 int RS480_VA_SIZE_32MB ;
 int RS480_VA_SIZE_512MB ;
 int RS480_VA_SIZE_64MB ;
 int RS600_BUS_MASTER_DIS ;
 int RS690_AIC_CTRL_SCRATCH ;
 int RS690_BLOCK_GFX_D3_EN ;
 int RS690_DIS_OUT_OF_PCI_GART_ACCESS ;
 int RS690_MCCFG_AGP_BASE ;
 int RS690_MCCFG_AGP_BASE_2 ;
 int RS690_MCCFG_AGP_LOCATION ;
 int RS690_MC_AGP_START ;
 int RS690_MC_AGP_TOP ;
 int WREG32 (int ,int) ;
 int WREG32_MC (int ,int) ;
 int rs400_gart_tlb_flush (struct radeon_device*) ;
 int upper_32_bits (scalar_t__) ;

int rs400_gart_enable(struct radeon_device *rdev)
{
 uint32_t size_reg;
 uint32_t tmp;

 tmp = RREG32_MC(RS690_AIC_CTRL_SCRATCH);
 tmp |= RS690_DIS_OUT_OF_PCI_GART_ACCESS;
 WREG32_MC(RS690_AIC_CTRL_SCRATCH, tmp);

 switch(rdev->mc.gtt_size / (1024 * 1024)) {
 case 32:
  size_reg = RS480_VA_SIZE_32MB;
  break;
 case 64:
  size_reg = RS480_VA_SIZE_64MB;
  break;
 case 128:
  size_reg = RS480_VA_SIZE_128MB;
  break;
 case 256:
  size_reg = RS480_VA_SIZE_256MB;
  break;
 case 512:
  size_reg = RS480_VA_SIZE_512MB;
  break;
 case 1024:
  size_reg = RS480_VA_SIZE_1GB;
  break;
 case 2048:
  size_reg = RS480_VA_SIZE_2GB;
  break;
 default:
  return -EINVAL;
 }

 if (rdev->family == CHIP_RS690 || (rdev->family == CHIP_RS740)) {
  WREG32_MC(RS690_MCCFG_AGP_BASE, 0xFFFFFFFF);
  WREG32_MC(RS690_MCCFG_AGP_BASE_2, 0);
 } else {
  WREG32(RADEON_AGP_BASE, 0xFFFFFFFF);
  WREG32(RS480_AGP_BASE_2, 0);
 }
 tmp = REG_SET(RS690_MC_AGP_TOP, rdev->mc.gtt_end >> 16);
 tmp |= REG_SET(RS690_MC_AGP_START, rdev->mc.gtt_start >> 16);
 if ((rdev->family == CHIP_RS690) || (rdev->family == CHIP_RS740)) {
  WREG32_MC(RS690_MCCFG_AGP_LOCATION, tmp);
  tmp = RREG32(RADEON_BUS_CNTL) & ~RS600_BUS_MASTER_DIS;
  WREG32(RADEON_BUS_CNTL, tmp);
 } else {
  WREG32(RADEON_MC_AGP_LOCATION, tmp);
  tmp = RREG32(RADEON_BUS_CNTL) & ~RADEON_BUS_MASTER_DIS;
  WREG32(RADEON_BUS_CNTL, tmp);
 }

 tmp = (u32)rdev->gart.table_addr & 0xfffff000;
 tmp |= (upper_32_bits(rdev->gart.table_addr) & 0xff) << 4;

 WREG32_MC(RS480_GART_BASE, tmp);

 WREG32_MC(RS480_GART_FEATURE_ID,
    (RS480_TLB_ENABLE |
     RS480_GTW_LAC_EN | RS480_1LEVEL_GART));

 WREG32_MC(RS480_AGP_MODE_CNTL,
    (1 << RS480_REQ_TYPE_SNOOP_SHIFT) | RS480_REQ_TYPE_SNOOP_DIS);



 if ((rdev->family == CHIP_RS690) || (rdev->family == CHIP_RS740)) {
  tmp = RREG32_MC(RS480_MC_MISC_CNTL);
  tmp |= RS480_GART_INDEX_REG_EN | RS690_BLOCK_GFX_D3_EN;
  WREG32_MC(RS480_MC_MISC_CNTL, tmp);
 } else {
  tmp = RREG32_MC(RS480_MC_MISC_CNTL);
  tmp |= RS480_GART_INDEX_REG_EN;
  WREG32_MC(RS480_MC_MISC_CNTL, tmp);
 }

 WREG32_MC(RS480_AGP_ADDRESS_SPACE_SIZE, (RS480_GART_EN | size_reg));
 rs400_gart_tlb_flush(rdev);
 DRM_INFO("PCIE GART of %uM enabled (table at 0x%016llX).\n",
   (unsigned)(rdev->mc.gtt_size >> 20),
   (unsigned long long)rdev->gart.table_addr);
 rdev->gart.ready = 1;
 return 0;
}
