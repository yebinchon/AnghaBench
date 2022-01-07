
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socfpga_fpga_priv {int dummy; } ;


 int SOCFPGA_FPGMGR_GPIO_INTEN_OFST ;
 int SOCFPGA_FPGMGR_GPIO_INTMSK_OFST ;
 int SOCFPGA_FPGMGR_GPIO_INTTYPE_LEVEL_OFST ;
 int SOCFPGA_FPGMGR_GPIO_INT_POL_OFST ;
 int SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST ;
 int socfpga_fpga_writel (struct socfpga_fpga_priv*,int ,int ) ;

__attribute__((used)) static void socfpga_fpga_enable_irqs(struct socfpga_fpga_priv *priv, u32 irqs)
{

 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_GPIO_INTTYPE_LEVEL_OFST, 0);


 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_GPIO_INT_POL_OFST, irqs);


 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_GPIO_PORTA_EOI_OFST, irqs);


 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_GPIO_INTMSK_OFST, 0);


 socfpga_fpga_writel(priv, SOCFPGA_FPGMGR_GPIO_INTEN_OFST, irqs);
}
