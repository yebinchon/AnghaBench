
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_match_node (int ,struct device_node*) ;
 int sun4i_tcon_of_table ;

__attribute__((used)) static bool sun4i_drv_node_is_tcon(struct device_node *node)
{
 return !!of_match_node(sun4i_tcon_of_table, node);
}
