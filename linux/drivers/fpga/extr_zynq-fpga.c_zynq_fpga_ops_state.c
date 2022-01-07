
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_fpga_priv {int clk; } ;
struct fpga_manager {struct zynq_fpga_priv* priv; } ;
typedef enum fpga_mgr_states { ____Placeholder_fpga_mgr_states } fpga_mgr_states ;


 int FPGA_MGR_STATE_OPERATING ;
 int FPGA_MGR_STATE_UNKNOWN ;
 int INT_STS_OFFSET ;
 int IXR_PCFG_DONE_MASK ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int zynq_fpga_read (struct zynq_fpga_priv*,int ) ;

__attribute__((used)) static enum fpga_mgr_states zynq_fpga_ops_state(struct fpga_manager *mgr)
{
 int err;
 u32 intr_status;
 struct zynq_fpga_priv *priv;

 priv = mgr->priv;

 err = clk_enable(priv->clk);
 if (err)
  return FPGA_MGR_STATE_UNKNOWN;

 intr_status = zynq_fpga_read(priv, INT_STS_OFFSET);
 clk_disable(priv->clk);

 if (intr_status & IXR_PCFG_DONE_MASK)
  return FPGA_MGR_STATE_OPERATING;

 return FPGA_MGR_STATE_UNKNOWN;
}
