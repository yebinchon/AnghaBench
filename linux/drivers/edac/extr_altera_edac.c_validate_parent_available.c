
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ENODEV ;
 int of_device_is_available (struct device_node*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

__attribute__((used)) static int validate_parent_available(struct device_node *np)
{
 struct device_node *parent;
 int ret = 0;


 if (of_device_is_compatible(np, "altr,sdram-edac-s10"))
  return 0;


 parent = of_parse_phandle(np, "altr,ecc-parent", 0);
 if (parent && !of_device_is_available(parent))
  ret = -ENODEV;

 of_node_put(parent);
 return ret;
}
