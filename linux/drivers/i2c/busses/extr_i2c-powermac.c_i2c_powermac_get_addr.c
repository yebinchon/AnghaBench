
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmac_i2c_bus {int dummy; } ;
struct i2c_adapter {int dev; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpup (int const*) ;
 int dev_warn (int *,char*,struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;

__attribute__((used)) static u32 i2c_powermac_get_addr(struct i2c_adapter *adap,
        struct pmac_i2c_bus *bus,
        struct device_node *node)
{
 const __be32 *prop;
 int len;


 prop = of_get_property(node, "reg", &len);
 if (prop && (len >= sizeof(int)))
  return (be32_to_cpup(prop) & 0xff) >> 1;


 prop = of_get_property(node, "i2c-address", &len);
 if (prop && (len >= sizeof(int)))
  return (be32_to_cpup(prop) & 0xff) >> 1;


 if (of_node_name_eq(node, "cereal"))
  return 0x60;
 else if (of_node_name_eq(node, "deq"))
  return 0x34;

 dev_warn(&adap->dev, "No i2c address for %pOF\n", node);

 return 0xffffffff;
}
