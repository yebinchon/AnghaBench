
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi_ddc {scalar_t__ regs; } ;


 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void sif_set_bit(struct mtk_hdmi_ddc *ddc, unsigned int offset,
          unsigned int val)
{
 writel(readl(ddc->regs + offset) | val, ddc->regs + offset);
}
