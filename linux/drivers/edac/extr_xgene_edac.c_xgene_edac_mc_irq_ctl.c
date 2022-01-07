
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xgene_edac_mc_ctx {int mcu_id; TYPE_1__* edac; scalar_t__ mcu_csr; } ;
struct mem_ctl_info {struct xgene_edac_mc_ctx* pvt_info; } ;
struct TYPE_3__ {int mc_registered_mask; int mc_active_mask; int mc_lock; } ;


 scalar_t__ EDAC_OPSTATE_INT ;
 scalar_t__ MCUGECR ;
 int MCU_CORR_ERR_MASK ;
 int MCU_CTL_ERR_MASK ;
 unsigned int MCU_GECR_BACKUCINTREN_MASK ;
 unsigned int MCU_GECR_CINTREN_MASK ;
 unsigned int MCU_GECR_DEMANDUCINTREN_MASK ;
 int MCU_UNCORR_ERR_MASK ;
 unsigned int MUC_GECR_MCUADDRERREN_MASK ;
 int PCPHPERRINTMSK ;
 int PCPLPERRINTMSK ;
 scalar_t__ edac_op_state ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;
 int xgene_edac_pcp_clrbits (TYPE_1__*,int ,int) ;
 int xgene_edac_pcp_setbits (TYPE_1__*,int ,int) ;

__attribute__((used)) static void xgene_edac_mc_irq_ctl(struct mem_ctl_info *mci, bool enable)
{
 struct xgene_edac_mc_ctx *ctx = mci->pvt_info;
 unsigned int val;

 if (edac_op_state != EDAC_OPSTATE_INT)
  return;

 mutex_lock(&ctx->edac->mc_lock);
 if (enable) {

  ctx->edac->mc_registered_mask |= 1 << ctx->mcu_id;


  if (ctx->edac->mc_registered_mask ==
      ctx->edac->mc_active_mask) {

   xgene_edac_pcp_clrbits(ctx->edac, PCPHPERRINTMSK,
            MCU_UNCORR_ERR_MASK |
            MCU_CTL_ERR_MASK);
   xgene_edac_pcp_clrbits(ctx->edac, PCPLPERRINTMSK,
            MCU_CORR_ERR_MASK);
  }


  val = readl(ctx->mcu_csr + MCUGECR);
  val |= MCU_GECR_DEMANDUCINTREN_MASK |
         MCU_GECR_BACKUCINTREN_MASK |
         MCU_GECR_CINTREN_MASK |
         MUC_GECR_MCUADDRERREN_MASK;
  writel(val, ctx->mcu_csr + MCUGECR);
 } else {

  val = readl(ctx->mcu_csr + MCUGECR);
  val &= ~(MCU_GECR_DEMANDUCINTREN_MASK |
    MCU_GECR_BACKUCINTREN_MASK |
    MCU_GECR_CINTREN_MASK |
    MUC_GECR_MCUADDRERREN_MASK);
  writel(val, ctx->mcu_csr + MCUGECR);


  xgene_edac_pcp_setbits(ctx->edac, PCPHPERRINTMSK,
           MCU_UNCORR_ERR_MASK | MCU_CTL_ERR_MASK);
  xgene_edac_pcp_setbits(ctx->edac, PCPLPERRINTMSK,
           MCU_CORR_ERR_MASK);


  ctx->edac->mc_registered_mask &= ~(1 << ctx->mcu_id);
 }

 mutex_unlock(&ctx->edac->mc_lock);
}
