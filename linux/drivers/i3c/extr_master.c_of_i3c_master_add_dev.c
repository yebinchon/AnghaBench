
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i3c_master_controller {int dummy; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int of_i3c_master_add_i2c_boardinfo (struct i3c_master_controller*,struct device_node*,int *) ;
 int of_i3c_master_add_i3c_boardinfo (struct i3c_master_controller*,struct device_node*,int *) ;
 int of_property_read_u32_array (struct device_node*,char*,int *,int ) ;

__attribute__((used)) static int of_i3c_master_add_dev(struct i3c_master_controller *master,
     struct device_node *node)
{
 u32 reg[3];
 int ret;

 if (!master || !node)
  return -EINVAL;

 ret = of_property_read_u32_array(node, "reg", reg, ARRAY_SIZE(reg));
 if (ret)
  return ret;





 if (!reg[1])
  ret = of_i3c_master_add_i2c_boardinfo(master, node, reg);
 else
  ret = of_i3c_master_add_i3c_boardinfo(master, node, reg);

 return ret;
}
