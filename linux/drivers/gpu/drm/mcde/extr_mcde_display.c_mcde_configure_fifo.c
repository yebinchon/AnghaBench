
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mcde {int regs; } ;
typedef enum mcde_fifo { ____Placeholder_mcde_fifo } mcde_fifo ;
typedef enum mcde_dsi_formatter { ____Placeholder_mcde_dsi_formatter } mcde_dsi_formatter ;


 int MCDE_CRA0 ;
 int MCDE_CRA1 ;
 int MCDE_CRB0 ;
 int MCDE_CRB1 ;
 int MCDE_CRX0_ALPHABLEND_SHIFT ;
 int MCDE_CRX0_BLENDEN ;
 int MCDE_CRX1_CLKSEL_MCDECLK ;
 int MCDE_CRX1_CLKSEL_SHIFT ;
 int MCDE_CTRLA ;
 int MCDE_CTRLB ;
 int MCDE_CTRLX_FIFOWTRMRK_SHIFT ;
 int MCDE_CTRLX_FORMID_SHIFT ;
 int MCDE_CTRLX_FORMTYPE_DSI ;
 int MCDE_CTRLX_FORMTYPE_SHIFT ;


 int writel (int,int) ;

__attribute__((used)) static void mcde_configure_fifo(struct mcde *mcde, enum mcde_fifo fifo,
    enum mcde_dsi_formatter fmt,
    int fifo_wtrmrk)
{
 u32 val;
 u32 ctrl;
 u32 cr0, cr1;

 switch (fifo) {
 case 129:
  ctrl = MCDE_CTRLA;
  cr0 = MCDE_CRA0;
  cr1 = MCDE_CRA1;
  break;
 case 128:
  ctrl = MCDE_CTRLB;
  cr0 = MCDE_CRB0;
  cr1 = MCDE_CRB1;
  break;
 }

 val = fifo_wtrmrk << MCDE_CTRLX_FIFOWTRMRK_SHIFT;

 val |= MCDE_CTRLX_FORMTYPE_DSI <<
  MCDE_CTRLX_FORMTYPE_SHIFT;


 val |= fmt << MCDE_CTRLX_FORMID_SHIFT;
 writel(val, mcde->regs + ctrl);


 val = MCDE_CRX0_BLENDEN |
  0xff << MCDE_CRX0_ALPHABLEND_SHIFT;
 writel(val, mcde->regs + cr0);




 val = MCDE_CRX1_CLKSEL_MCDECLK << MCDE_CRX1_CLKSEL_SHIFT;


 writel(val, mcde->regs + cr1);
}
