
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
struct adv7511 {int num_dsi_lanes; int use_timing_gen; int rgb; int embedded_sync; int host_node; } ;


 int EINVAL ;
 int ENODEV ;
 int of_graph_get_remote_node (struct device_node*,int ,int ) ;
 int of_node_put (int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

int adv7533_parse_dt(struct device_node *np, struct adv7511 *adv)
{
 u32 num_lanes;

 of_property_read_u32(np, "adi,dsi-lanes", &num_lanes);

 if (num_lanes < 1 || num_lanes > 4)
  return -EINVAL;

 adv->num_dsi_lanes = num_lanes;

 adv->host_node = of_graph_get_remote_node(np, 0, 0);
 if (!adv->host_node)
  return -ENODEV;

 of_node_put(adv->host_node);

 adv->use_timing_gen = !of_property_read_bool(np,
      "adi,disable-timing-generator");


 adv->rgb = 1;
 adv->embedded_sync = 0;

 return 0;
}
