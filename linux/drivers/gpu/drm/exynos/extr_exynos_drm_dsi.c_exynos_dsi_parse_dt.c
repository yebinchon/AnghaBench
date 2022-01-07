
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dsi {int in_bridge_node; int esc_clk_rate; int burst_clk_rate; int pll_clk_rate; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int DSI_PORT_IN ;
 int exynos_dsi_of_read_u32 (struct device_node*,char*,int *) ;
 int of_graph_get_remote_node (struct device_node*,int ,int ) ;

__attribute__((used)) static int exynos_dsi_parse_dt(struct exynos_dsi *dsi)
{
 struct device *dev = dsi->dev;
 struct device_node *node = dev->of_node;
 int ret;

 ret = exynos_dsi_of_read_u32(node, "samsung,pll-clock-frequency",
         &dsi->pll_clk_rate);
 if (ret < 0)
  return ret;

 ret = exynos_dsi_of_read_u32(node, "samsung,burst-clock-frequency",
         &dsi->burst_clk_rate);
 if (ret < 0)
  return ret;

 ret = exynos_dsi_of_read_u32(node, "samsung,esc-clock-frequency",
         &dsi->esc_clk_rate);
 if (ret < 0)
  return ret;

 dsi->in_bridge_node = of_graph_get_remote_node(node, DSI_PORT_IN, 0);

 return 0;
}
