
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socfpga_fpga_priv {int status_complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SOCFPGA_FPGMGR_GPIO_EXT_PORTA_OFST ;
 int SOCFPGA_FPGMGR_GPIO_INTEN_OFST ;
 int SOCFPGA_FPGMGR_GPIO_INTSTAT_OFST ;
 int SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST ;
 int SOCFPGA_FPGMGR_MON_CONF_DONE ;
 int SOCFPGA_FPGMGR_MON_NSTATUS ;
 int complete (int *) ;
 int socfpga_fpga_raw_readl (struct socfpga_fpga_priv*,int ) ;
 int socfpga_fpga_raw_writel (struct socfpga_fpga_priv*,int ,int) ;

__attribute__((used)) static irqreturn_t socfpga_fpga_isr(int irq, void *dev_id)
{
 struct socfpga_fpga_priv *priv = dev_id;
 u32 irqs, st;
 bool conf_done, nstatus;


 irqs = socfpga_fpga_raw_readl(priv, SOCFPGA_FPGMGR_GPIO_INTSTAT_OFST);

 socfpga_fpga_raw_writel(priv, SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST, irqs);

 st = socfpga_fpga_raw_readl(priv, SOCFPGA_FPGMGR_GPIO_EXT_PORTA_OFST);
 conf_done = (st & SOCFPGA_FPGMGR_MON_CONF_DONE) != 0;
 nstatus = (st & SOCFPGA_FPGMGR_MON_NSTATUS) != 0;


 if (conf_done && nstatus) {

  socfpga_fpga_raw_writel(priv,
     SOCFPGA_FPGMGR_GPIO_INTEN_OFST, 0);
  complete(&priv->status_complete);
 }

 return IRQ_HANDLED;
}
