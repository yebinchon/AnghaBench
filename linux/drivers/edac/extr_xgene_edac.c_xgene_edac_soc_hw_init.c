
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_edac_dev_ctx {int edac; scalar_t__ dev_csr; } ;
struct edac_device_ctl_info {scalar_t__ op_state; struct xgene_edac_dev_ctx* pvt_info; } ;


 int CSW_SWITCH_TRACE_ERR_MASK ;
 scalar_t__ IOBAXIS0TRANSERRINTMSK ;
 scalar_t__ IOBAXIS1TRANSERRINTMSK ;
 int IOB_BA_ERR_MASK ;
 int IOB_PA_ERR_MASK ;
 int IOB_RB_ERR_MASK ;
 int IOB_XGIC_ERR_MASK ;
 int MEMERRINTMSK ;
 scalar_t__ OP_RUNNING_INTERRUPT ;
 int PCPHPERRINTMSK ;
 int PCPLPERRINTMSK ;
 scalar_t__ XGICTRANSERRINTMSK ;
 int writel (int,scalar_t__) ;
 int xgene_edac_pcp_clrbits (int ,int ,int) ;
 int xgene_edac_pcp_setbits (int ,int ,int) ;

__attribute__((used)) static void xgene_edac_soc_hw_init(struct edac_device_ctl_info *edac_dev,
       bool enable)
{
 struct xgene_edac_dev_ctx *ctx = edac_dev->pvt_info;


 if (edac_dev->op_state == OP_RUNNING_INTERRUPT) {
  if (enable) {
   xgene_edac_pcp_clrbits(ctx->edac, PCPHPERRINTMSK,
            IOB_PA_ERR_MASK |
            IOB_BA_ERR_MASK |
            IOB_XGIC_ERR_MASK |
            IOB_RB_ERR_MASK);
   xgene_edac_pcp_clrbits(ctx->edac, PCPLPERRINTMSK,
            CSW_SWITCH_TRACE_ERR_MASK);
  } else {
   xgene_edac_pcp_setbits(ctx->edac, PCPHPERRINTMSK,
            IOB_PA_ERR_MASK |
            IOB_BA_ERR_MASK |
            IOB_XGIC_ERR_MASK |
            IOB_RB_ERR_MASK);
   xgene_edac_pcp_setbits(ctx->edac, PCPLPERRINTMSK,
            CSW_SWITCH_TRACE_ERR_MASK);
  }

  writel(enable ? 0x0 : 0xFFFFFFFF,
         ctx->dev_csr + IOBAXIS0TRANSERRINTMSK);
  writel(enable ? 0x0 : 0xFFFFFFFF,
         ctx->dev_csr + IOBAXIS1TRANSERRINTMSK);
  writel(enable ? 0x0 : 0xFFFFFFFF,
         ctx->dev_csr + XGICTRANSERRINTMSK);

  xgene_edac_pcp_setbits(ctx->edac, MEMERRINTMSK,
           enable ? 0x0 : 0xFFFFFFFF);
 }
}
