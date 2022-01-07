
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct komeda_pipeline {int dual_link; int of_node; void** of_output_links; int of_output_port; struct clk* pxlclk; } ;
struct komeda_dev {size_t n_pipelines; struct komeda_pipeline** pipelines; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;


 int DRM_ERROR (char*,size_t) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int KOMEDA_OF_PORT_OUTPUT ;
 int PTR_ERR (struct clk*) ;
 struct clk* of_clk_get_by_name (struct device_node*,char*) ;
 int of_graph_get_port_by_id (struct device_node*,int ) ;
 void* of_graph_get_remote_node (struct device_node*,int ,int) ;
 int of_node_get (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,size_t*) ;

__attribute__((used)) static int komeda_parse_pipe_dt(struct komeda_dev *mdev, struct device_node *np)
{
 struct komeda_pipeline *pipe;
 struct clk *clk;
 u32 pipe_id;
 int ret = 0;

 ret = of_property_read_u32(np, "reg", &pipe_id);
 if (ret != 0 || pipe_id >= mdev->n_pipelines)
  return -EINVAL;

 pipe = mdev->pipelines[pipe_id];

 clk = of_clk_get_by_name(np, "pxclk");
 if (IS_ERR(clk)) {
  DRM_ERROR("get pxclk for pipeline %d failed!\n", pipe_id);
  return PTR_ERR(clk);
 }
 pipe->pxlclk = clk;


 pipe->of_output_links[0] =
  of_graph_get_remote_node(np, KOMEDA_OF_PORT_OUTPUT, 0);
 pipe->of_output_links[1] =
  of_graph_get_remote_node(np, KOMEDA_OF_PORT_OUTPUT, 1);
 pipe->of_output_port =
  of_graph_get_port_by_id(np, KOMEDA_OF_PORT_OUTPUT);

 pipe->dual_link = pipe->of_output_links[0] && pipe->of_output_links[1];
 pipe->of_node = of_node_get(np);

 return 0;
}
