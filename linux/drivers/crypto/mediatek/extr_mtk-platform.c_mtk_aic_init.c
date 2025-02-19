
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cryp {scalar_t__ base; } ;


 scalar_t__ AIC_ENABLE_CTRL (int) ;
 scalar_t__ AIC_ENABLE_SET (int) ;
 scalar_t__ AIC_G_ENABLE_CTRL ;
 scalar_t__ AIC_G_ENABLE_SET ;
 scalar_t__ AIC_G_POL_CTRL ;
 scalar_t__ AIC_G_TYPE_CTRL ;
 scalar_t__ AIC_POL_CTRL (int) ;
 scalar_t__ AIC_TYPE_CTRL (int) ;
 int MTK_RING_MAX ;
 int mtk_aic_cap_check (struct mtk_cryp*,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mtk_aic_init(struct mtk_cryp *cryp, int hw)
{
 int err;

 err = mtk_aic_cap_check(cryp, hw);
 if (err)
  return err;


 if (hw == MTK_RING_MAX) {
  writel(0, cryp->base + AIC_G_ENABLE_CTRL);
  writel(0, cryp->base + AIC_G_POL_CTRL);
  writel(0, cryp->base + AIC_G_TYPE_CTRL);
  writel(0, cryp->base + AIC_G_ENABLE_SET);
 } else {
  writel(0, cryp->base + AIC_ENABLE_CTRL(hw));
  writel(0, cryp->base + AIC_POL_CTRL(hw));
  writel(0, cryp->base + AIC_TYPE_CTRL(hw));
  writel(0, cryp->base + AIC_ENABLE_SET(hw));
 }

 return 0;
}
