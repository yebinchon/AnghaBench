
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;

__attribute__((used)) static bool sun4i_drv_node_is_frontend(struct device_node *node)
{
 return of_device_is_compatible(node, "allwinner,sun4i-a10-display-frontend") ||
  of_device_is_compatible(node, "allwinner,sun5i-a13-display-frontend") ||
  of_device_is_compatible(node, "allwinner,sun6i-a31-display-frontend") ||
  of_device_is_compatible(node, "allwinner,sun7i-a20-display-frontend") ||
  of_device_is_compatible(node, "allwinner,sun8i-a23-display-frontend") ||
  of_device_is_compatible(node, "allwinner,sun8i-a33-display-frontend") ||
  of_device_is_compatible(node, "allwinner,sun9i-a80-display-frontend");
}
