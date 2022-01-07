
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_sn_bridge {int host_node; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int DRM_ERROR (char*) ;
 int ENODEV ;
 int of_graph_get_remote_node (struct device_node*,int ,int ) ;

__attribute__((used)) static int ti_sn_bridge_parse_dsi_host(struct ti_sn_bridge *pdata)
{
 struct device_node *np = pdata->dev->of_node;

 pdata->host_node = of_graph_get_remote_node(np, 0, 0);

 if (!pdata->host_node) {
  DRM_ERROR("remote dsi host node not found\n");
  return -ENODEV;
 }

 return 0;
}
