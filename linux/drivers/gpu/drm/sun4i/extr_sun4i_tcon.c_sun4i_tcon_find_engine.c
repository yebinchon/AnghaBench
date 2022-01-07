
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_engine {int dummy; } ;
struct sun4i_drv {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 struct sunxi_engine* ERR_PTR (int ) ;
 int of_get_child_count (struct device_node*) ;
 struct device_node* of_graph_get_port_by_id (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ sun4i_tcon_connected_to_tcon_top (struct device_node*) ;
 struct sunxi_engine* sun4i_tcon_find_engine_traverse (struct sun4i_drv*,struct device_node*,int ) ;
 struct sunxi_engine* sun4i_tcon_get_engine_by_id (struct sun4i_drv*,int) ;
 int sun4i_tcon_get_index (struct sun4i_drv*) ;
 int sun4i_tcon_of_get_id_from_port (struct device_node*) ;

__attribute__((used)) static struct sunxi_engine *sun4i_tcon_find_engine(struct sun4i_drv *drv,
         struct device_node *node)
{
 struct device_node *port;
 struct sunxi_engine *engine;

 port = of_graph_get_port_by_id(node, 0);
 if (!port)
  return ERR_PTR(-EINVAL);





 if (of_get_child_count(port) > 1) {
  int id;
  if (sun4i_tcon_connected_to_tcon_top(node))
   id = sun4i_tcon_get_index(drv);
  else
   id = sun4i_tcon_of_get_id_from_port(port);


  engine = sun4i_tcon_get_engine_by_id(drv, id);

  of_node_put(port);
  return engine;
 }


 of_node_put(port);
 return sun4i_tcon_find_engine_traverse(drv, node, 0);
}
