
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_device_is_compatible (struct device_node*,char*) ;

__attribute__((used)) static bool sun4i_drv_node_is_deu(struct device_node *node)
{
 return of_device_is_compatible(node, "allwinner,sun9i-a80-deu");
}
