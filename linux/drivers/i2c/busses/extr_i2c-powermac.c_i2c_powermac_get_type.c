
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tmp ;
struct i2c_adapter {int dev; } ;
struct device_node {int dummy; } ;


 int dev_err (int *,char*,struct device_node*) ;
 scalar_t__ of_modalias_node (struct device_node*,char*,int) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static bool i2c_powermac_get_type(struct i2c_adapter *adap,
         struct device_node *node,
         u32 addr, char *type, int type_size)
{
 char tmp[16];
 if (of_modalias_node(node, tmp, sizeof(tmp)) >= 0) {
  snprintf(type, type_size, "MAC,%s", tmp);
  return 1;
 }


 if (of_node_name_eq(node, "deq")) {

  if (addr == 0x34) {
   snprintf(type, type_size, "MAC,tas3001");
   return 1;
  } else if (addr == 0x35) {
   snprintf(type, type_size, "MAC,tas3004");
   return 1;
  }
 }

 dev_err(&adap->dev, "i2c-powermac: modalias failure on %pOF\n", node);
 return 0;
}
