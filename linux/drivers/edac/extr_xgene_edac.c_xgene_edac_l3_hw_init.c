
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_edac_dev_ctx {int edac; scalar_t__ dev_csr; } ;
struct edac_device_ctl_info {scalar_t__ op_state; struct xgene_edac_dev_ctx* pvt_info; } ;


 int L3C_CERREN ;
 int L3C_CORR_ERR_MASK ;
 scalar_t__ L3C_ECR ;
 int L3C_ECR_CINTREN ;
 int L3C_ECR_UCINTREN ;
 int L3C_UCERREN ;
 int L3C_UNCORR_ERR_MASK ;
 scalar_t__ OP_RUNNING_INTERRUPT ;
 int PCPHPERRINTMSK ;
 int PCPLPERRINTMSK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;
 int xgene_edac_pcp_clrbits (int ,int ,int ) ;
 int xgene_edac_pcp_setbits (int ,int ,int ) ;

__attribute__((used)) static void xgene_edac_l3_hw_init(struct edac_device_ctl_info *edac_dev,
      bool enable)
{
 struct xgene_edac_dev_ctx *ctx = edac_dev->pvt_info;
 u32 val;

 val = readl(ctx->dev_csr + L3C_ECR);
 val |= L3C_UCERREN | L3C_CERREN;

 if (edac_dev->op_state == OP_RUNNING_INTERRUPT) {
  if (enable)
   val |= L3C_ECR_UCINTREN | L3C_ECR_CINTREN;
  else
   val &= ~(L3C_ECR_UCINTREN | L3C_ECR_CINTREN);
 }
 writel(val, ctx->dev_csr + L3C_ECR);

 if (edac_dev->op_state == OP_RUNNING_INTERRUPT) {

  if (enable) {
   xgene_edac_pcp_clrbits(ctx->edac, PCPHPERRINTMSK,
            L3C_UNCORR_ERR_MASK);
   xgene_edac_pcp_clrbits(ctx->edac, PCPLPERRINTMSK,
            L3C_CORR_ERR_MASK);
  } else {
   xgene_edac_pcp_setbits(ctx->edac, PCPHPERRINTMSK,
            L3C_UNCORR_ERR_MASK);
   xgene_edac_pcp_setbits(ctx->edac, PCPLPERRINTMSK,
            L3C_CORR_ERR_MASK);
  }
 }
}
