
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto4xx_device {scalar_t__ ce_base; } ;


 scalar_t__ CRYPTO4XX_DEVICE_CTRL ;
 int PPC4XX_TRNG_EN ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ppc4xx_trng_enable(struct crypto4xx_device *dev, bool enable)
{
 u32 device_ctrl;

 device_ctrl = readl(dev->ce_base + CRYPTO4XX_DEVICE_CTRL);
 if (enable)
  device_ctrl |= PPC4XX_TRNG_EN;
 else
  device_ctrl &= ~PPC4XX_TRNG_EN;
 writel(device_ctrl, dev->ce_base + CRYPTO4XX_DEVICE_CTRL);
}
