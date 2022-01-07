
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpi2c_imx_struct {unsigned int msglen; unsigned int delivered; int rxfifosize; scalar_t__ base; } ;


 scalar_t__ LPI2C_MFCR ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void lpi2c_imx_set_rx_watermark(struct lpi2c_imx_struct *lpi2c_imx)
{
 unsigned int temp, remaining;

 remaining = lpi2c_imx->msglen - lpi2c_imx->delivered;

 if (remaining > (lpi2c_imx->rxfifosize >> 1))
  temp = lpi2c_imx->rxfifosize >> 1;
 else
  temp = 0;

 writel(temp << 16, lpi2c_imx->base + LPI2C_MFCR);
}
