
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {int update_lock; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int W83781D_REG_BANK ;
 int W83781D_REG_CHIPMAN ;
 int W83781D_REG_CONFIG ;
 int W83781D_REG_I2C_ADDR ;
 int W83781D_REG_WCHIPID ;
 int dev_dbg (int *,char*,...) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlcpy (int ,char const*,int ) ;
 scalar_t__ w83781d_alias_detect (struct i2c_client*,int) ;
 struct w83781d_data* w83781d_data_if_isa () ;

__attribute__((used)) static int
w83781d_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 int val1, val2;
 struct w83781d_data *isa = w83781d_data_if_isa();
 struct i2c_adapter *adapter = client->adapter;
 int address = client->addr;
 const char *client_name;
 enum vendor { winbond, asus } vendid;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;






 if (isa)
  mutex_lock(&isa->update_lock);

 if (i2c_smbus_read_byte_data(client, W83781D_REG_CONFIG) & 0x80) {
  dev_dbg(&adapter->dev,
   "Detection of w83781d chip failed at step 3\n");
  goto err_nodev;
 }

 val1 = i2c_smbus_read_byte_data(client, W83781D_REG_BANK);
 val2 = i2c_smbus_read_byte_data(client, W83781D_REG_CHIPMAN);

 if (!(val1 & 0x07) &&
     ((!(val1 & 0x80) && val2 != 0xa3 && val2 != 0xc3) ||
      ((val1 & 0x80) && val2 != 0x5c && val2 != 0x12))) {
  dev_dbg(&adapter->dev,
   "Detection of w83781d chip failed at step 4\n");
  goto err_nodev;
 }




 if ((!(val1 & 0x80) && val2 == 0xa3) ||
     ((val1 & 0x80) && val2 == 0x5c)) {
  if (i2c_smbus_read_byte_data(client, W83781D_REG_I2C_ADDR)
      != address) {
   dev_dbg(&adapter->dev,
    "Detection of w83781d chip failed at step 5\n");
   goto err_nodev;
  }
 }


 i2c_smbus_write_byte_data(client, W83781D_REG_BANK,
  (i2c_smbus_read_byte_data(client, W83781D_REG_BANK)
   & 0x78) | 0x80);


 val2 = i2c_smbus_read_byte_data(client, W83781D_REG_CHIPMAN);
 if (val2 == 0x5c)
  vendid = winbond;
 else if (val2 == 0x12)
  vendid = asus;
 else {
  dev_dbg(&adapter->dev,
   "w83781d chip vendor is neither Winbond nor Asus\n");
  goto err_nodev;
 }


 val1 = i2c_smbus_read_byte_data(client, W83781D_REG_WCHIPID);
 if ((val1 == 0x10 || val1 == 0x11) && vendid == winbond)
  client_name = "w83781d";
 else if (val1 == 0x30 && vendid == winbond)
  client_name = "w83782d";
 else if (val1 == 0x40 && vendid == winbond && address == 0x2d)
  client_name = "w83783s";
 else if (val1 == 0x31)
  client_name = "as99127f";
 else
  goto err_nodev;

 if (val1 <= 0x30 && w83781d_alias_detect(client, val1)) {
  dev_dbg(&adapter->dev,
   "Device at 0x%02x appears to be the same as ISA device\n",
   address);
  goto err_nodev;
 }

 if (isa)
  mutex_unlock(&isa->update_lock);

 strlcpy(info->type, client_name, I2C_NAME_SIZE);

 return 0;

 err_nodev:
 if (isa)
  mutex_unlock(&isa->update_lock);
 return -ENODEV;
}
