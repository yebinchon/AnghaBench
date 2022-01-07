
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int datawidth; int bus_format; int mapping; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOENT ;
 int dev_err (struct device*,char*,int,char const*) ;
 TYPE_1__* imx_ldb_bit_mappings ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int strcasecmp (char const*,int ) ;

__attribute__((used)) static u32 of_get_bus_format(struct device *dev, struct device_node *np)
{
 const char *bm;
 u32 datawidth = 0;
 int ret, i;

 ret = of_property_read_string(np, "fsl,data-mapping", &bm);
 if (ret < 0)
  return ret;

 of_property_read_u32(np, "fsl,data-width", &datawidth);

 for (i = 0; i < ARRAY_SIZE(imx_ldb_bit_mappings); i++) {
  if (!strcasecmp(bm, imx_ldb_bit_mappings[i].mapping) &&
      datawidth == imx_ldb_bit_mappings[i].datawidth)
   return imx_ldb_bit_mappings[i].bus_format;
 }

 dev_err(dev, "invalid data mapping: %d-bit \"%s\"\n", datawidth, bm);

 return -ENOENT;
}
