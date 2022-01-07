
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapdss_comp_node {int dss_core_component; char const* compat; int list; struct device_node* node; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct omapdss_comp_node* devm_kzalloc (struct device*,int,int ) ;
 int list_add (int *,int *) ;
 int of_device_is_available (struct device_node*) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 struct device_node* of_graph_get_next_endpoint (struct device_node*,struct device_node*) ;
 struct device_node* of_graph_get_remote_port_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int omapdss_comp_list ;
 scalar_t__ omapdss_list_contains (struct device_node*) ;

__attribute__((used)) static void omapdss_walk_device(struct device *dev, struct device_node *node,
    bool dss_core)
{
 struct omapdss_comp_node *comp;
 struct device_node *n;
 const char *compat;
 int ret;

 ret = of_property_read_string(node, "compatible", &compat);
 if (ret < 0)
  return;

 comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
 if (comp) {
  comp->node = node;
  comp->dss_core_component = dss_core;
  comp->compat = compat;
  list_add(&comp->list, &omapdss_comp_list);
 }





 n = of_get_child_by_name(node, "ports");
 if (!n)
  n = of_get_child_by_name(node, "port");
 if (!n)
  return;

 of_node_put(n);

 n = ((void*)0);
 while ((n = of_graph_get_next_endpoint(node, n)) != ((void*)0)) {
  struct device_node *pn = of_graph_get_remote_port_parent(n);

  if (!pn)
   continue;

  if (!of_device_is_available(pn) || omapdss_list_contains(pn)) {
   of_node_put(pn);
   continue;
  }

  omapdss_walk_device(dev, pn, 0);
 }
}
