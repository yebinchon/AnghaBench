
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int detected; } ;
struct i2c_board_info {int addr; int type; int flags; } ;
struct i2c_adapter {int userspace_clients_lock; int userspace_clients; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int I2C_ADDR_OFFSET_SLAVE ;
 int I2C_ADDR_OFFSET_TEN_BIT ;
 int I2C_CLIENT_SLAVE ;
 int I2C_CLIENT_TEN ;
 int I2C_NAME_SIZE ;
 scalar_t__ IS_ERR (struct i2c_client*) ;
 size_t PTR_ERR (struct i2c_client*) ;
 int dev_err (struct device*,char*,char*) ;
 int dev_info (struct device*,char*,char*,int ,int) ;
 struct i2c_client* i2c_new_client_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,char const*,int) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char*,char*,int*,char*) ;
 char* strchr (char const*,char) ;
 struct i2c_adapter* to_i2c_adapter (struct device*) ;

__attribute__((used)) static ssize_t
i2c_sysfs_new_device(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct i2c_adapter *adap = to_i2c_adapter(dev);
 struct i2c_board_info info;
 struct i2c_client *client;
 char *blank, end;
 int res;

 memset(&info, 0, sizeof(struct i2c_board_info));

 blank = strchr(buf, ' ');
 if (!blank) {
  dev_err(dev, "%s: Missing parameters\n", "new_device");
  return -EINVAL;
 }
 if (blank - buf > I2C_NAME_SIZE - 1) {
  dev_err(dev, "%s: Invalid device name\n", "new_device");
  return -EINVAL;
 }
 memcpy(info.type, buf, blank - buf);


 res = sscanf(++blank, "%hi%c", &info.addr, &end);
 if (res < 1) {
  dev_err(dev, "%s: Can't parse I2C address\n", "new_device");
  return -EINVAL;
 }
 if (res > 1 && end != '\n') {
  dev_err(dev, "%s: Extra parameters\n", "new_device");
  return -EINVAL;
 }

 if ((info.addr & I2C_ADDR_OFFSET_TEN_BIT) == I2C_ADDR_OFFSET_TEN_BIT) {
  info.addr &= ~I2C_ADDR_OFFSET_TEN_BIT;
  info.flags |= I2C_CLIENT_TEN;
 }

 if (info.addr & I2C_ADDR_OFFSET_SLAVE) {
  info.addr &= ~I2C_ADDR_OFFSET_SLAVE;
  info.flags |= I2C_CLIENT_SLAVE;
 }

 client = i2c_new_client_device(adap, &info);
 if (IS_ERR(client))
  return PTR_ERR(client);


 mutex_lock(&adap->userspace_clients_lock);
 list_add_tail(&client->detected, &adap->userspace_clients);
 mutex_unlock(&adap->userspace_clients_lock);
 dev_info(dev, "%s: Instantiated device %s at 0x%02hx\n", "new_device",
   info.type, info.addr);

 return count;
}
