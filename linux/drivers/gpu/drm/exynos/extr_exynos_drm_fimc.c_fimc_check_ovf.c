
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int id; int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int DRM_DEV_ERROR (int ,char*,int ,int) ;
 int EXYNOS_CISTATUS ;
 int EXYNOS_CISTATUS_OVFICB ;
 int EXYNOS_CISTATUS_OVFICR ;
 int EXYNOS_CISTATUS_OVFIY ;
 int EXYNOS_CIWDOFST ;
 int EXYNOS_CIWDOFST_CLROVFICB ;
 int EXYNOS_CIWDOFST_CLROVFICR ;
 int EXYNOS_CIWDOFST_CLROVFIY ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_set_bits (struct fimc_context*,int ,int) ;

__attribute__((used)) static bool fimc_check_ovf(struct fimc_context *ctx)
{
 u32 status, flag;

 status = fimc_read(ctx, EXYNOS_CISTATUS);
 flag = EXYNOS_CISTATUS_OVFIY | EXYNOS_CISTATUS_OVFICB |
  EXYNOS_CISTATUS_OVFICR;

 DRM_DEV_DEBUG_KMS(ctx->dev, "flag[0x%x]\n", flag);

 if (status & flag) {
  fimc_set_bits(ctx, EXYNOS_CIWDOFST,
   EXYNOS_CIWDOFST_CLROVFIY | EXYNOS_CIWDOFST_CLROVFICB |
   EXYNOS_CIWDOFST_CLROVFICR);

  DRM_DEV_ERROR(ctx->dev,
         "occurred overflow at %d, status 0x%x.\n",
         ctx->id, status);
  return 1;
 }

 return 0;
}
