
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_vtg {scalar_t__ regs; } ;


 scalar_t__ VTG_HOST_ITM_BCLR ;
 scalar_t__ VTG_HOST_ITM_BSET ;
 scalar_t__ VTG_HOST_ITS_BCLR ;
 int VTG_IRQ_MASK ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vtg_enable_irq(struct sti_vtg *vtg)
{

 writel(0xFFFF, vtg->regs + VTG_HOST_ITS_BCLR);
 writel(0xFFFF, vtg->regs + VTG_HOST_ITM_BCLR);
 writel(VTG_IRQ_MASK, vtg->regs + VTG_HOST_ITM_BSET);
}
