
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_dsi {int completed; int dev; } ;
typedef int irqreturn_t ;


 int DSIM_INTMSK_REG ;
 int DSIM_INTSRC_REG ;
 int DSIM_INT_PLL_STABLE ;
 int DSIM_INT_RX_DONE ;
 int DSIM_INT_RX_ECC_ERR ;
 int DSIM_INT_SFR_FIFO_EMPTY ;
 int DSIM_INT_SFR_HDR_FIFO_EMPTY ;
 int DSIM_INT_SW_RST_RELEASE ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int dev_warn (int ,char*) ;
 int exynos_dsi_read (struct exynos_dsi*,int ) ;
 scalar_t__ exynos_dsi_transfer_finish (struct exynos_dsi*) ;
 int exynos_dsi_transfer_start (struct exynos_dsi*) ;
 int exynos_dsi_write (struct exynos_dsi*,int ,int) ;
 scalar_t__ printk_timed_ratelimit (unsigned long*,int) ;

__attribute__((used)) static irqreturn_t exynos_dsi_irq(int irq, void *dev_id)
{
 struct exynos_dsi *dsi = dev_id;
 u32 status;

 status = exynos_dsi_read(dsi, DSIM_INTSRC_REG);
 if (!status) {
  static unsigned long int j;
  if (printk_timed_ratelimit(&j, 500))
   dev_warn(dsi->dev, "spurious interrupt\n");
  return IRQ_HANDLED;
 }
 exynos_dsi_write(dsi, DSIM_INTSRC_REG, status);

 if (status & DSIM_INT_SW_RST_RELEASE) {
  u32 mask = ~(DSIM_INT_RX_DONE | DSIM_INT_SFR_FIFO_EMPTY |
   DSIM_INT_SFR_HDR_FIFO_EMPTY | DSIM_INT_RX_ECC_ERR |
   DSIM_INT_SW_RST_RELEASE);
  exynos_dsi_write(dsi, DSIM_INTMSK_REG, mask);
  complete(&dsi->completed);
  return IRQ_HANDLED;
 }

 if (!(status & (DSIM_INT_RX_DONE | DSIM_INT_SFR_FIFO_EMPTY |
   DSIM_INT_PLL_STABLE)))
  return IRQ_HANDLED;

 if (exynos_dsi_transfer_finish(dsi))
  exynos_dsi_transfer_start(dsi);

 return IRQ_HANDLED;
}
