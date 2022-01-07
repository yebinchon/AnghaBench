
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {TYPE_2__ rlc; } ;
struct amdgpu_device {int dev; TYPE_3__ gfx; } ;
struct TYPE_4__ {int (* stop ) (struct amdgpu_device*) ;} ;


 int CP_MEC_CNTL__MEC_ME1_HALT_MASK ;
 int CP_MEC_CNTL__MEC_ME2_HALT_MASK ;
 int CP_ME_CNTL__CE_HALT_MASK ;
 int CP_ME_CNTL__ME_HALT_MASK ;
 int CP_ME_CNTL__PFP_HALT_MASK ;
 int GRBM_SOFT_RESET__SOFT_RESET_CP_MASK ;
 int GRBM_SOFT_RESET__SOFT_RESET_GFX_MASK ;
 int GRBM_SOFT_RESET__SOFT_RESET_RLC_MASK ;
 int GRBM_STATUS2__RLC_BUSY_MASK ;
 int GRBM_STATUS__BCI_BUSY_MASK ;
 int GRBM_STATUS__CB_BUSY_MASK ;
 int GRBM_STATUS__CP_BUSY_MASK ;
 int GRBM_STATUS__CP_COHERENCY_BUSY_MASK ;
 int GRBM_STATUS__DB_BUSY_MASK ;
 int GRBM_STATUS__GDS_BUSY_MASK ;
 int GRBM_STATUS__IA_BUSY_MASK ;
 int GRBM_STATUS__IA_BUSY_NO_DMA_MASK ;
 int GRBM_STATUS__PA_BUSY_MASK ;
 int GRBM_STATUS__SC_BUSY_MASK ;
 int GRBM_STATUS__SPI_BUSY_MASK ;
 int GRBM_STATUS__SX_BUSY_MASK ;
 int GRBM_STATUS__TA_BUSY_MASK ;
 int GRBM_STATUS__VGT_BUSY_MASK ;
 int RREG32 (int ) ;
 int SRBM_SOFT_RESET__SOFT_RESET_GRBM_MASK ;
 int SRBM_STATUS__GRBM_RQ_PENDING_MASK ;
 int WREG32 (int ,int) ;
 int dev_info (int ,char*,int) ;
 int gfx_v7_0_fini_pg (struct amdgpu_device*) ;
 int gfx_v7_0_update_cg (struct amdgpu_device*,int) ;
 int mmCP_MEC_CNTL ;
 int mmCP_ME_CNTL ;
 int mmGRBM_SOFT_RESET ;
 int mmGRBM_STATUS ;
 int mmGRBM_STATUS2 ;
 int mmSRBM_SOFT_RESET ;
 int mmSRBM_STATUS ;
 int stub1 (struct amdgpu_device*) ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v7_0_soft_reset(void *handle)
{
 u32 grbm_soft_reset = 0, srbm_soft_reset = 0;
 u32 tmp;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 tmp = RREG32(mmGRBM_STATUS);
 if (tmp & (GRBM_STATUS__PA_BUSY_MASK | GRBM_STATUS__SC_BUSY_MASK |
     GRBM_STATUS__BCI_BUSY_MASK | GRBM_STATUS__SX_BUSY_MASK |
     GRBM_STATUS__TA_BUSY_MASK | GRBM_STATUS__VGT_BUSY_MASK |
     GRBM_STATUS__DB_BUSY_MASK | GRBM_STATUS__CB_BUSY_MASK |
     GRBM_STATUS__GDS_BUSY_MASK | GRBM_STATUS__SPI_BUSY_MASK |
     GRBM_STATUS__IA_BUSY_MASK | GRBM_STATUS__IA_BUSY_NO_DMA_MASK))
  grbm_soft_reset |= GRBM_SOFT_RESET__SOFT_RESET_CP_MASK |
   GRBM_SOFT_RESET__SOFT_RESET_GFX_MASK;

 if (tmp & (GRBM_STATUS__CP_BUSY_MASK | GRBM_STATUS__CP_COHERENCY_BUSY_MASK)) {
  grbm_soft_reset |= GRBM_SOFT_RESET__SOFT_RESET_CP_MASK;
  srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_GRBM_MASK;
 }


 tmp = RREG32(mmGRBM_STATUS2);
 if (tmp & GRBM_STATUS2__RLC_BUSY_MASK)
  grbm_soft_reset |= GRBM_SOFT_RESET__SOFT_RESET_RLC_MASK;


 tmp = RREG32(mmSRBM_STATUS);
 if (tmp & SRBM_STATUS__GRBM_RQ_PENDING_MASK)
  srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_GRBM_MASK;

 if (grbm_soft_reset || srbm_soft_reset) {

  gfx_v7_0_fini_pg(adev);
  gfx_v7_0_update_cg(adev, 0);


  adev->gfx.rlc.funcs->stop(adev);


  WREG32(mmCP_ME_CNTL, CP_ME_CNTL__ME_HALT_MASK | CP_ME_CNTL__PFP_HALT_MASK | CP_ME_CNTL__CE_HALT_MASK);


  WREG32(mmCP_MEC_CNTL, CP_MEC_CNTL__MEC_ME1_HALT_MASK | CP_MEC_CNTL__MEC_ME2_HALT_MASK);

  if (grbm_soft_reset) {
   tmp = RREG32(mmGRBM_SOFT_RESET);
   tmp |= grbm_soft_reset;
   dev_info(adev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
   WREG32(mmGRBM_SOFT_RESET, tmp);
   tmp = RREG32(mmGRBM_SOFT_RESET);

   udelay(50);

   tmp &= ~grbm_soft_reset;
   WREG32(mmGRBM_SOFT_RESET, tmp);
   tmp = RREG32(mmGRBM_SOFT_RESET);
  }

  if (srbm_soft_reset) {
   tmp = RREG32(mmSRBM_SOFT_RESET);
   tmp |= srbm_soft_reset;
   dev_info(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
   WREG32(mmSRBM_SOFT_RESET, tmp);
   tmp = RREG32(mmSRBM_SOFT_RESET);

   udelay(50);

   tmp &= ~srbm_soft_reset;
   WREG32(mmSRBM_SOFT_RESET, tmp);
   tmp = RREG32(mmSRBM_SOFT_RESET);
  }

  udelay(50);
 }
 return 0;
}
