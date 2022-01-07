
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi_ddc {scalar_t__ regs; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline bool sif_bit_is_set(struct mtk_hdmi_ddc *ddc, unsigned int offset,
      unsigned int val)
{
 return (readl(ddc->regs + offset) & val) == val;
}
