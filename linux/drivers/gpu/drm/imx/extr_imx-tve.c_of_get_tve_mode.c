
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int const EINVAL ;
 int * imx_tve_modes ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int strcasecmp (char const*,int ) ;

__attribute__((used)) static const int of_get_tve_mode(struct device_node *np)
{
 const char *bm;
 int ret, i;

 ret = of_property_read_string(np, "fsl,tve-mode", &bm);
 if (ret < 0)
  return ret;

 for (i = 0; i < ARRAY_SIZE(imx_tve_modes); i++)
  if (!strcasecmp(bm, imx_tve_modes[i]))
   return i;

 return -EINVAL;
}
