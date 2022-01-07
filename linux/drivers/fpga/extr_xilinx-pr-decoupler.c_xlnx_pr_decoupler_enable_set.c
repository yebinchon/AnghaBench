
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlnx_pr_decoupler_data {int clk; } ;
struct fpga_bridge {struct xlnx_pr_decoupler_data* priv; } ;


 int CTRL_CMD_COUPLE ;
 int CTRL_CMD_DECOUPLE ;
 int CTRL_OFFSET ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int xlnx_pr_decoupler_write (struct xlnx_pr_decoupler_data*,int ,int ) ;

__attribute__((used)) static int xlnx_pr_decoupler_enable_set(struct fpga_bridge *bridge, bool enable)
{
 int err;
 struct xlnx_pr_decoupler_data *priv = bridge->priv;

 err = clk_enable(priv->clk);
 if (err)
  return err;

 if (enable)
  xlnx_pr_decoupler_write(priv, CTRL_OFFSET, CTRL_CMD_COUPLE);
 else
  xlnx_pr_decoupler_write(priv, CTRL_OFFSET, CTRL_CMD_DECOUPLE);

 clk_disable(priv->clk);

 return 0;
}
