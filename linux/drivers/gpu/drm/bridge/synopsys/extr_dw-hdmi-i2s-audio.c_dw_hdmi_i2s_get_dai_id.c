
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct of_endpoint {int port; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int of_graph_parse_endpoint (struct device_node*,struct of_endpoint*) ;

__attribute__((used)) static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
      struct device_node *endpoint)
{
 struct of_endpoint of_ep;
 int ret;

 ret = of_graph_parse_endpoint(endpoint, &of_ep);
 if (ret < 0)
  return ret;





 if (of_ep.port == 2)
  return 0;

 return -EINVAL;
}
