
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlnx_pr_decoupler_data {int clk; int io_base; } ;
struct fpga_bridge {struct xlnx_pr_decoupler_data* priv; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int readl (int ) ;

__attribute__((used)) static int xlnx_pr_decoupler_enable_show(struct fpga_bridge *bridge)
{
 const struct xlnx_pr_decoupler_data *priv = bridge->priv;
 u32 status;
 int err;

 err = clk_enable(priv->clk);
 if (err)
  return err;

 status = readl(priv->io_base);

 clk_disable(priv->clk);

 return !status;
}
