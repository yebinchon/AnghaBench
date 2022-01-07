
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int CONFIG_DRM_SUN8I_TCON_TOP ;
 scalar_t__ IS_ENABLED (int ) ;
 struct device_node* of_graph_get_remote_node (struct device_node*,int ,int) ;
 scalar_t__ of_match_node (int ,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int sun8i_tcon_top_of_table ;

__attribute__((used)) static bool sun4i_tcon_connected_to_tcon_top(struct device_node *node)
{
 struct device_node *remote;
 bool ret = 0;

 remote = of_graph_get_remote_node(node, 0, -1);
 if (remote) {
  ret = !!(IS_ENABLED(CONFIG_DRM_SUN8I_TCON_TOP) &&
    of_match_node(sun8i_tcon_top_of_table, remote));
  of_node_put(remote);
 }

 return ret;
}
