
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trusted_foundations_platform_data {int version_minor; int version_major; } ;
struct device_node {int dummy; } ;


 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int panic (char*) ;
 int register_trusted_foundations (struct trusted_foundations_platform_data*) ;

void of_register_trusted_foundations(void)
{
 struct device_node *node;
 struct trusted_foundations_platform_data pdata;
 int err;

 node = of_find_compatible_node(((void*)0), ((void*)0), "tlm,trusted-foundations");
 if (!node)
  return;

 err = of_property_read_u32(node, "tlm,version-major",
       &pdata.version_major);
 if (err != 0)
  panic("Trusted Foundation: missing version-major property\n");
 err = of_property_read_u32(node, "tlm,version-minor",
       &pdata.version_minor);
 if (err != 0)
  panic("Trusted Foundation: missing version-minor property\n");
 register_trusted_foundations(&pdata);
}
