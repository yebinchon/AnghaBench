
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int CONFIG_DRM_SUN4I_BACKEND ;
 scalar_t__ IS_ENABLED (int ) ;
 int of_match_node (int ,struct device_node*) ;
 int sun4i_frontend_of_table ;

__attribute__((used)) static bool sun4i_drv_node_is_supported_frontend(struct device_node *node)
{
 if (IS_ENABLED(CONFIG_DRM_SUN4I_BACKEND))
  return !!of_match_node(sun4i_frontend_of_table, node);

 return 0;
}
