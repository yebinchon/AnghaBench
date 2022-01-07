
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xgene_edac_mc_ctx {TYPE_1__* edac; } ;
struct TYPE_2__ {int mc_active_mask; int mcba_map; int mcbb_map; int csw_map; } ;


 int CSW_CSWCR ;
 unsigned int CSW_CSWCR_DUALMCB_MASK ;
 int MCBADDRMR ;
 unsigned int MCBADDRMR_DUALMCU_MODE_MASK ;
 scalar_t__ regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int xgene_edac_mc_is_active(struct xgene_edac_mc_ctx *ctx, int mc_idx)
{
 unsigned int reg;
 u32 mcu_mask;

 if (regmap_read(ctx->edac->csw_map, CSW_CSWCR, &reg))
  return 0;

 if (reg & CSW_CSWCR_DUALMCB_MASK) {




  if (regmap_read(ctx->edac->mcbb_map, MCBADDRMR, &reg))
   return 0;
  mcu_mask = (reg & MCBADDRMR_DUALMCU_MODE_MASK) ? 0xF : 0x5;
 } else {




  if (regmap_read(ctx->edac->mcba_map, MCBADDRMR, &reg))
   return 0;
  mcu_mask = (reg & MCBADDRMR_DUALMCU_MODE_MASK) ? 0x3 : 0x1;
 }


 if (!ctx->edac->mc_active_mask)
  ctx->edac->mc_active_mask = mcu_mask;

 return (mcu_mask & (1 << mc_idx)) ? 1 : 0;
}
