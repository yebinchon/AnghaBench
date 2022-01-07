
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dsi {scalar_t__ regs; } ;


 int CMD_DONE_INT_FLAG ;
 scalar_t__ DSI_INTEN ;
 int LPRX_RD_RDY_INT_FLAG ;
 int VM_DONE_INT_FLAG ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_dsi_set_interrupt_enable(struct mtk_dsi *dsi)
{
 u32 inten = LPRX_RD_RDY_INT_FLAG | CMD_DONE_INT_FLAG | VM_DONE_INT_FLAG;

 writel(inten, dsi->regs + DSI_INTEN);
}
