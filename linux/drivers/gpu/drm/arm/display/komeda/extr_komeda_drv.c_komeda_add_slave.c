
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;


 int compare_of ;
 int drm_of_component_match_add (struct device*,struct component_match**,int ,struct device_node*) ;
 struct device_node* of_graph_get_remote_node (struct device_node*,int ,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static void komeda_add_slave(struct device *master,
        struct component_match **match,
        struct device_node *np,
        u32 port, u32 endpoint)
{
 struct device_node *remote;

 remote = of_graph_get_remote_node(np, port, endpoint);
 if (remote) {
  drm_of_component_match_add(master, match, compare_of, remote);
  of_node_put(remote);
 }
}
