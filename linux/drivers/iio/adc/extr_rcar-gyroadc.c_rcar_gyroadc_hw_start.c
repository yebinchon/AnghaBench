
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gyroadc {scalar_t__ regs; } ;


 scalar_t__ RCAR_GYROADC_START_STOP ;
 int RCAR_GYROADC_START_STOP_START ;
 int mdelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void rcar_gyroadc_hw_start(struct rcar_gyroadc *priv)
{

 writel(RCAR_GYROADC_START_STOP_START,
        priv->regs + RCAR_GYROADC_START_STOP);







 mdelay(3);
}
