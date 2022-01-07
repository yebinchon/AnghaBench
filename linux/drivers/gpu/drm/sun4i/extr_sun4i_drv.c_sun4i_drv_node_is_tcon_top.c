
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int CONFIG_DRM_SUN8I_TCON_TOP ;
 scalar_t__ IS_ENABLED (int ) ;
 int of_match_node (int ,struct device_node*) ;
 int sun8i_tcon_top_of_table ;

__attribute__((used)) static bool sun4i_drv_node_is_tcon_top(struct device_node *node)
{
 return IS_ENABLED(CONFIG_DRM_SUN8I_TCON_TOP) &&
  !!of_match_node(sun8i_tcon_top_of_table, node);
}
