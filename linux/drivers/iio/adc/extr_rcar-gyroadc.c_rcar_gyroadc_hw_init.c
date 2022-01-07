
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gyroadc {scalar_t__ mode; scalar_t__ model; scalar_t__ regs; int clk; } ;


 scalar_t__ RCAR_GYROADC_1_25MS_LENGTH ;
 scalar_t__ RCAR_GYROADC_CLOCK_LENGTH ;
 scalar_t__ RCAR_GYROADC_INTENR ;
 scalar_t__ RCAR_GYROADC_MODEL_R8A7792 ;
 scalar_t__ RCAR_GYROADC_MODE_SELECT ;
 scalar_t__ RCAR_GYROADC_MODE_SELECT_1_MB88101A ;
 scalar_t__ RCAR_GYROADC_START_STOP ;
 int clk_get_rate (int ) ;
 int writel (unsigned long const,scalar_t__) ;

__attribute__((used)) static void rcar_gyroadc_hw_init(struct rcar_gyroadc *priv)
{
 const unsigned long clk_mhz = clk_get_rate(priv->clk) / 1000000;
 const unsigned long clk_mul =
  (priv->mode == RCAR_GYROADC_MODE_SELECT_1_MB88101A) ? 10 : 5;
 unsigned long clk_len = clk_mhz * clk_mul;






 if (clk_len & 1)
  clk_len++;


 writel(0, priv->regs + RCAR_GYROADC_START_STOP);


 if (priv->model == RCAR_GYROADC_MODEL_R8A7792)
  writel(0, priv->regs + RCAR_GYROADC_INTENR);


 writel(priv->mode, priv->regs + RCAR_GYROADC_MODE_SELECT);
 writel(clk_len, priv->regs + RCAR_GYROADC_CLOCK_LENGTH);
 writel(clk_mhz * 1250, priv->regs + RCAR_GYROADC_1_25MS_LENGTH);
}
