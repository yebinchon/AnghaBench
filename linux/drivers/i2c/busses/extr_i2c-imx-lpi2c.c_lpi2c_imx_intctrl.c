
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpi2c_imx_struct {scalar_t__ base; } ;


 scalar_t__ LPI2C_MIER ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void lpi2c_imx_intctrl(struct lpi2c_imx_struct *lpi2c_imx,
         unsigned int enable)
{
 writel(enable, lpi2c_imx->base + LPI2C_MIER);
}
