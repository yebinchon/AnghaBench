
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node const*,char const*,int *) ;
 int pr_err (char*,struct device_node const*,char const*) ;

__attribute__((used)) static int exynos_dsi_of_read_u32(const struct device_node *np,
      const char *propname, u32 *out_value)
{
 int ret = of_property_read_u32(np, propname, out_value);

 if (ret < 0)
  pr_err("%pOF: failed to get '%s' property\n", np, propname);

 return ret;
}
