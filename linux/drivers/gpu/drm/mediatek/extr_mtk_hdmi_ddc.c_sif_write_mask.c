
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi_ddc {scalar_t__ regs; } ;


 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void sif_write_mask(struct mtk_hdmi_ddc *ddc, unsigned int offset,
      unsigned int mask, unsigned int shift,
      unsigned int val)
{
 unsigned int tmp;

 tmp = readl(ddc->regs + offset);
 tmp &= ~mask;
 tmp |= (val << shift) & mask;
 writel(tmp, ddc->regs + offset);
}
