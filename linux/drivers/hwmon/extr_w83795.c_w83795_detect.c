
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {unsigned short addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int W83795_REG_BANKSEL ;
 int W83795_REG_CHIPID ;
 int W83795_REG_CONFIG ;
 int W83795_REG_CONFIG_CONFIG48 ;
 int W83795_REG_I2C_ADDR ;
 int W83795_REG_VENDORID ;
 int dev_dbg (int *,char*,unsigned short,char*) ;
 int dev_info (int *,char*,char const*,char,unsigned short) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int strlcpy (int ,char const*,int ) ;
 int w83795_get_device_id (struct i2c_client*) ;

__attribute__((used)) static int w83795_detect(struct i2c_client *client,
    struct i2c_board_info *info)
{
 int bank, vendor_id, device_id, expected, i2c_addr, config;
 struct i2c_adapter *adapter = client->adapter;
 unsigned short address = client->addr;
 const char *chip_name;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;
 bank = i2c_smbus_read_byte_data(client, W83795_REG_BANKSEL);
 if (bank < 0 || (bank & 0x7c)) {
  dev_dbg(&adapter->dev,
   "w83795: Detection failed at addr 0x%02hx, check %s\n",
   address, "bank");
  return -ENODEV;
 }


 vendor_id = i2c_smbus_read_byte_data(client, W83795_REG_VENDORID);
 expected = bank & 0x80 ? 0x5c : 0xa3;
 if (vendor_id != expected) {
  dev_dbg(&adapter->dev,
   "w83795: Detection failed at addr 0x%02hx, check %s\n",
   address, "vendor id");
  return -ENODEV;
 }


 device_id = w83795_get_device_id(client) |
      (i2c_smbus_read_byte_data(client, W83795_REG_CHIPID) << 8);
 if ((device_id >> 4) != 0x795) {
  dev_dbg(&adapter->dev,
   "w83795: Detection failed at addr 0x%02hx, check %s\n",
   address, "device id\n");
  return -ENODEV;
 }





 if ((bank & 0x07) == 0) {
  i2c_addr = i2c_smbus_read_byte_data(client,
          W83795_REG_I2C_ADDR);
  if ((i2c_addr & 0x7f) != address) {
   dev_dbg(&adapter->dev,
    "w83795: Detection failed at addr 0x%02hx, "
    "check %s\n", address, "i2c addr");
   return -ENODEV;
  }
 }







 if ((bank & 0x07) != 0)
  i2c_smbus_write_byte_data(client, W83795_REG_BANKSEL,
       bank & ~0x07);
 config = i2c_smbus_read_byte_data(client, W83795_REG_CONFIG);
 if (config & W83795_REG_CONFIG_CONFIG48)
  chip_name = "w83795adg";
 else
  chip_name = "w83795g";

 strlcpy(info->type, chip_name, I2C_NAME_SIZE);
 dev_info(&adapter->dev, "Found %s rev. %c at 0x%02hx\n", chip_name,
   'A' + (device_id & 0xf), address);

 return 0;
}
