
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_cryp {scalar_t__ base; } ;


 scalar_t__ DFE_THR_CTRL ;
 scalar_t__ DFE_THR_STAT ;
 scalar_t__ DSE_THR_CTRL ;
 scalar_t__ DSE_THR_STAT ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ MTK_DFSE_IDLE ;
 scalar_t__ MTK_DFSE_RING_ID (int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mtk_dfe_dse_state_check(struct mtk_cryp *cryp)
{
 int ret = -EINVAL;
 u32 val;


 val = readl(cryp->base + DFE_THR_STAT);
 if (MTK_DFSE_RING_ID(val) == MTK_DFSE_IDLE) {
  val = readl(cryp->base + DSE_THR_STAT);
  if (MTK_DFSE_RING_ID(val) == MTK_DFSE_IDLE)
   ret = 0;
 }

 if (!ret) {

  writel(0, cryp->base + DFE_THR_CTRL);
  writel(0, cryp->base + DSE_THR_CTRL);
 } else {
  return -EBUSY;
 }

 return 0;
}
