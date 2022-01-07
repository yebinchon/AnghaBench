
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct dsi_data* private; } ;
struct dsi_data {int dummy; } ;


 int DSI_CLK_CTRL ;
 int DSI_CLK_TIMING ;
 int DSI_COMPLEXIO_CFG1 ;
 int DSI_COMPLEXIO_CFG2 ;
 int DSI_COMPLEXIO_IRQ_ENABLE ;
 int DSI_COMPLEXIO_IRQ_STATUS ;
 int DSI_CTRL ;
 int DSI_DSIPHY_CFG0 ;
 int DSI_DSIPHY_CFG1 ;
 int DSI_DSIPHY_CFG2 ;
 int DSI_DSIPHY_CFG5 ;
 int DSI_IRQENABLE ;
 int DSI_IRQSTATUS ;
 int DSI_PLL_CONFIGURATION1 ;
 int DSI_PLL_CONFIGURATION2 ;
 int DSI_PLL_CONTROL ;
 int DSI_PLL_GO ;
 int DSI_PLL_STATUS ;
 int DSI_REVISION ;
 int DSI_RX_FIFO_VC_FULLNESS ;
 int DSI_RX_FIFO_VC_SIZE ;
 int DSI_STOPCLK_TIMING ;
 int DSI_SYSCONFIG ;
 int DSI_SYSSTATUS ;
 int DSI_TIMING1 ;
 int DSI_TIMING2 ;
 int DSI_TX_FIFO_VC_EMPTINESS ;
 int DSI_TX_FIFO_VC_SIZE ;
 int DSI_VC_CTRL (int) ;
 int DSI_VC_IRQENABLE (int) ;
 int DSI_VC_IRQSTATUS (int) ;
 int DSI_VC_LONG_PACKET_HEADER (int) ;
 int DSI_VC_LONG_PACKET_PAYLOAD (int) ;
 int DSI_VC_SHORT_PACKET_HEADER (int) ;
 int DSI_VC_TE (int) ;
 int DSI_VM_TIMING1 ;
 int DSI_VM_TIMING2 ;
 int DSI_VM_TIMING3 ;
 int DSI_VM_TIMING4 ;
 int DSI_VM_TIMING5 ;
 int DSI_VM_TIMING6 ;
 int DSI_VM_TIMING7 ;
 int DUMPREG (int ) ;
 int dsi_disable_scp_clk (struct dsi_data*) ;
 int dsi_enable_scp_clk (struct dsi_data*) ;
 scalar_t__ dsi_runtime_get (struct dsi_data*) ;
 int dsi_runtime_put (struct dsi_data*) ;

__attribute__((used)) static int dsi_dump_dsi_regs(struct seq_file *s, void *p)
{
 struct dsi_data *dsi = s->private;

 if (dsi_runtime_get(dsi))
  return 0;
 dsi_enable_scp_clk(dsi);


 seq_printf(s, "%-35s %08x\n", "DSI_REVISION", dsi_read_reg(dsi, DSI_REVISION));
 seq_printf(s, "%-35s %08x\n", "DSI_SYSCONFIG", dsi_read_reg(dsi, DSI_SYSCONFIG));
 seq_printf(s, "%-35s %08x\n", "DSI_SYSSTATUS", dsi_read_reg(dsi, DSI_SYSSTATUS));
 seq_printf(s, "%-35s %08x\n", "DSI_IRQSTATUS", dsi_read_reg(dsi, DSI_IRQSTATUS));
 seq_printf(s, "%-35s %08x\n", "DSI_IRQENABLE", dsi_read_reg(dsi, DSI_IRQENABLE));
 seq_printf(s, "%-35s %08x\n", "DSI_CTRL", dsi_read_reg(dsi, DSI_CTRL));
 seq_printf(s, "%-35s %08x\n", "DSI_COMPLEXIO_CFG1", dsi_read_reg(dsi, DSI_COMPLEXIO_CFG1));
 seq_printf(s, "%-35s %08x\n", "DSI_COMPLEXIO_IRQ_STATUS", dsi_read_reg(dsi, DSI_COMPLEXIO_IRQ_STATUS));
 seq_printf(s, "%-35s %08x\n", "DSI_COMPLEXIO_IRQ_ENABLE", dsi_read_reg(dsi, DSI_COMPLEXIO_IRQ_ENABLE));
 seq_printf(s, "%-35s %08x\n", "DSI_CLK_CTRL", dsi_read_reg(dsi, DSI_CLK_CTRL));
 seq_printf(s, "%-35s %08x\n", "DSI_TIMING1", dsi_read_reg(dsi, DSI_TIMING1));
 seq_printf(s, "%-35s %08x\n", "DSI_TIMING2", dsi_read_reg(dsi, DSI_TIMING2));
 seq_printf(s, "%-35s %08x\n", "DSI_VM_TIMING1", dsi_read_reg(dsi, DSI_VM_TIMING1));
 seq_printf(s, "%-35s %08x\n", "DSI_VM_TIMING2", dsi_read_reg(dsi, DSI_VM_TIMING2));
 seq_printf(s, "%-35s %08x\n", "DSI_VM_TIMING3", dsi_read_reg(dsi, DSI_VM_TIMING3));
 seq_printf(s, "%-35s %08x\n", "DSI_CLK_TIMING", dsi_read_reg(dsi, DSI_CLK_TIMING));
 seq_printf(s, "%-35s %08x\n", "DSI_TX_FIFO_VC_SIZE", dsi_read_reg(dsi, DSI_TX_FIFO_VC_SIZE));
 seq_printf(s, "%-35s %08x\n", "DSI_RX_FIFO_VC_SIZE", dsi_read_reg(dsi, DSI_RX_FIFO_VC_SIZE));
 seq_printf(s, "%-35s %08x\n", "DSI_COMPLEXIO_CFG2", dsi_read_reg(dsi, DSI_COMPLEXIO_CFG2));
 seq_printf(s, "%-35s %08x\n", "DSI_RX_FIFO_VC_FULLNESS", dsi_read_reg(dsi, DSI_RX_FIFO_VC_FULLNESS));
 seq_printf(s, "%-35s %08x\n", "DSI_VM_TIMING4", dsi_read_reg(dsi, DSI_VM_TIMING4));
 seq_printf(s, "%-35s %08x\n", "DSI_TX_FIFO_VC_EMPTINESS", dsi_read_reg(dsi, DSI_TX_FIFO_VC_EMPTINESS));
 seq_printf(s, "%-35s %08x\n", "DSI_VM_TIMING5", dsi_read_reg(dsi, DSI_VM_TIMING5));
 seq_printf(s, "%-35s %08x\n", "DSI_VM_TIMING6", dsi_read_reg(dsi, DSI_VM_TIMING6));
 seq_printf(s, "%-35s %08x\n", "DSI_VM_TIMING7", dsi_read_reg(dsi, DSI_VM_TIMING7));
 seq_printf(s, "%-35s %08x\n", "DSI_STOPCLK_TIMING", dsi_read_reg(dsi, DSI_STOPCLK_TIMING));

 seq_printf(s, "%-35s %08x\n", "DSI_VC_CTRL(0)", dsi_read_reg(dsi, DSI_VC_CTRL(0)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_TE(0)", dsi_read_reg(dsi, DSI_VC_TE(0)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_LONG_PACKET_HEADER(0)", dsi_read_reg(dsi, DSI_VC_LONG_PACKET_HEADER(0)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_LONG_PACKET_PAYLOAD(0)", dsi_read_reg(dsi, DSI_VC_LONG_PACKET_PAYLOAD(0)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_SHORT_PACKET_HEADER(0)", dsi_read_reg(dsi, DSI_VC_SHORT_PACKET_HEADER(0)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_IRQSTATUS(0)", dsi_read_reg(dsi, DSI_VC_IRQSTATUS(0)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_IRQENABLE(0)", dsi_read_reg(dsi, DSI_VC_IRQENABLE(0)));

 seq_printf(s, "%-35s %08x\n", "DSI_VC_CTRL(1)", dsi_read_reg(dsi, DSI_VC_CTRL(1)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_TE(1)", dsi_read_reg(dsi, DSI_VC_TE(1)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_LONG_PACKET_HEADER(1)", dsi_read_reg(dsi, DSI_VC_LONG_PACKET_HEADER(1)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_LONG_PACKET_PAYLOAD(1)", dsi_read_reg(dsi, DSI_VC_LONG_PACKET_PAYLOAD(1)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_SHORT_PACKET_HEADER(1)", dsi_read_reg(dsi, DSI_VC_SHORT_PACKET_HEADER(1)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_IRQSTATUS(1)", dsi_read_reg(dsi, DSI_VC_IRQSTATUS(1)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_IRQENABLE(1)", dsi_read_reg(dsi, DSI_VC_IRQENABLE(1)));

 seq_printf(s, "%-35s %08x\n", "DSI_VC_CTRL(2)", dsi_read_reg(dsi, DSI_VC_CTRL(2)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_TE(2)", dsi_read_reg(dsi, DSI_VC_TE(2)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_LONG_PACKET_HEADER(2)", dsi_read_reg(dsi, DSI_VC_LONG_PACKET_HEADER(2)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_LONG_PACKET_PAYLOAD(2)", dsi_read_reg(dsi, DSI_VC_LONG_PACKET_PAYLOAD(2)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_SHORT_PACKET_HEADER(2)", dsi_read_reg(dsi, DSI_VC_SHORT_PACKET_HEADER(2)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_IRQSTATUS(2)", dsi_read_reg(dsi, DSI_VC_IRQSTATUS(2)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_IRQENABLE(2)", dsi_read_reg(dsi, DSI_VC_IRQENABLE(2)));

 seq_printf(s, "%-35s %08x\n", "DSI_VC_CTRL(3)", dsi_read_reg(dsi, DSI_VC_CTRL(3)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_TE(3)", dsi_read_reg(dsi, DSI_VC_TE(3)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_LONG_PACKET_HEADER(3)", dsi_read_reg(dsi, DSI_VC_LONG_PACKET_HEADER(3)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_LONG_PACKET_PAYLOAD(3)", dsi_read_reg(dsi, DSI_VC_LONG_PACKET_PAYLOAD(3)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_SHORT_PACKET_HEADER(3)", dsi_read_reg(dsi, DSI_VC_SHORT_PACKET_HEADER(3)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_IRQSTATUS(3)", dsi_read_reg(dsi, DSI_VC_IRQSTATUS(3)));
 seq_printf(s, "%-35s %08x\n", "DSI_VC_IRQENABLE(3)", dsi_read_reg(dsi, DSI_VC_IRQENABLE(3)));

 seq_printf(s, "%-35s %08x\n", "DSI_DSIPHY_CFG0", dsi_read_reg(dsi, DSI_DSIPHY_CFG0));
 seq_printf(s, "%-35s %08x\n", "DSI_DSIPHY_CFG1", dsi_read_reg(dsi, DSI_DSIPHY_CFG1));
 seq_printf(s, "%-35s %08x\n", "DSI_DSIPHY_CFG2", dsi_read_reg(dsi, DSI_DSIPHY_CFG2));
 seq_printf(s, "%-35s %08x\n", "DSI_DSIPHY_CFG5", dsi_read_reg(dsi, DSI_DSIPHY_CFG5));

 seq_printf(s, "%-35s %08x\n", "DSI_PLL_CONTROL", dsi_read_reg(dsi, DSI_PLL_CONTROL));
 seq_printf(s, "%-35s %08x\n", "DSI_PLL_STATUS", dsi_read_reg(dsi, DSI_PLL_STATUS));
 seq_printf(s, "%-35s %08x\n", "DSI_PLL_GO", dsi_read_reg(dsi, DSI_PLL_GO));
 seq_printf(s, "%-35s %08x\n", "DSI_PLL_CONFIGURATION1", dsi_read_reg(dsi, DSI_PLL_CONFIGURATION1));
 seq_printf(s, "%-35s %08x\n", "DSI_PLL_CONFIGURATION2", dsi_read_reg(dsi, DSI_PLL_CONFIGURATION2));


 dsi_disable_scp_clk(dsi);
 dsi_runtime_put(dsi);

 return 0;
}
