
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gyroadc {scalar_t__ regs; } ;


 scalar_t__ RCAR_GYROADC_START_STOP ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void rcar_gyroadc_hw_stop(struct rcar_gyroadc *priv)
{

 writel(0, priv->regs + RCAR_GYROADC_START_STOP);
}
