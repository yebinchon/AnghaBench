
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcde {scalar_t__ regs; } ;


 scalar_t__ MCDE_IMSCCHNL ;
 scalar_t__ MCDE_IMSCOVL ;
 scalar_t__ MCDE_IMSCPP ;
 scalar_t__ MCDE_RISCHNL ;
 scalar_t__ MCDE_RISOVL ;
 scalar_t__ MCDE_RISPP ;
 int writel (int,scalar_t__) ;

void mcde_display_disable_irqs(struct mcde *mcde)
{

 writel(0, mcde->regs + MCDE_IMSCPP);
 writel(0, mcde->regs + MCDE_IMSCOVL);
 writel(0, mcde->regs + MCDE_IMSCCHNL);


 writel(0xFFFFFFFF, mcde->regs + MCDE_RISPP);
 writel(0xFFFFFFFF, mcde->regs + MCDE_RISOVL);
 writel(0xFFFFFFFF, mcde->regs + MCDE_RISCHNL);
}
