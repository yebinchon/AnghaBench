
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_board_info {int addr; int flags; struct device_node* of_node; int type; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int I2C_CLIENT_HOST_NOTIFY ;
 int I2C_CLIENT_SLAVE ;
 int I2C_CLIENT_TEN ;
 int I2C_CLIENT_WAKE ;
 int I2C_OWN_SLAVE_ADDRESS ;
 int I2C_TEN_BIT_ADDRESS ;
 int dev_err (struct device*,char*,struct device_node*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ of_modalias_node (struct device_node*,int ,int) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

int of_i2c_get_board_info(struct device *dev, struct device_node *node,
     struct i2c_board_info *info)
{
 u32 addr;
 int ret;

 memset(info, 0, sizeof(*info));

 if (of_modalias_node(node, info->type, sizeof(info->type)) < 0) {
  dev_err(dev, "of_i2c: modalias failure on %pOF\n", node);
  return -EINVAL;
 }

 ret = of_property_read_u32(node, "reg", &addr);
 if (ret) {
  dev_err(dev, "of_i2c: invalid reg on %pOF\n", node);
  return ret;
 }

 if (addr & I2C_TEN_BIT_ADDRESS) {
  addr &= ~I2C_TEN_BIT_ADDRESS;
  info->flags |= I2C_CLIENT_TEN;
 }

 if (addr & I2C_OWN_SLAVE_ADDRESS) {
  addr &= ~I2C_OWN_SLAVE_ADDRESS;
  info->flags |= I2C_CLIENT_SLAVE;
 }

 info->addr = addr;
 info->of_node = node;

 if (of_property_read_bool(node, "host-notify"))
  info->flags |= I2C_CLIENT_HOST_NOTIFY;

 if (of_get_property(node, "wakeup-source", ((void*)0)))
  info->flags |= I2C_CLIENT_WAKE;

 return 0;
}
