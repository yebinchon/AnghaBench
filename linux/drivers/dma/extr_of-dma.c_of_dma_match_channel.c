
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 scalar_t__ of_parse_phandle_with_args (struct device_node*,char*,char*,int,struct of_phandle_args*) ;
 scalar_t__ of_property_read_string_index (struct device_node*,char*,int,char const**) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int of_dma_match_channel(struct device_node *np, const char *name,
    int index, struct of_phandle_args *dma_spec)
{
 const char *s;

 if (of_property_read_string_index(np, "dma-names", index, &s))
  return -ENODEV;

 if (strcmp(name, s))
  return -ENODEV;

 if (of_parse_phandle_with_args(np, "dmas", "#dma-cells", index,
           dma_spec))
  return -ENODEV;

 return 0;
}
