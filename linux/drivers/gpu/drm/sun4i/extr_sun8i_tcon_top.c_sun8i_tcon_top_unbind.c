
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_tcon_top {int rst; int bus; struct clk_hw_onecell_data* clk_data; } ;
struct device {int of_node; } ;
struct clk_hw_onecell_data {scalar_t__* hws; } ;


 int CLK_NUM ;
 int clk_disable_unprepare (int ) ;
 int clk_hw_unregister_gate (scalar_t__) ;
 struct sun8i_tcon_top* dev_get_drvdata (struct device*) ;
 int of_clk_del_provider (int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void sun8i_tcon_top_unbind(struct device *dev, struct device *master,
      void *data)
{
 struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
 struct clk_hw_onecell_data *clk_data = tcon_top->clk_data;
 int i;

 of_clk_del_provider(dev->of_node);
 for (i = 0; i < CLK_NUM; i++)
  if (clk_data->hws[i])
   clk_hw_unregister_gate(clk_data->hws[i]);

 clk_disable_unprepare(tcon_top->bus);
 reset_control_assert(tcon_top->rst);
}
