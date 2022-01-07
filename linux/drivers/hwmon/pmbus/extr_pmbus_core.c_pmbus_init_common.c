
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmbus_driver_info {int (* identify ) (struct i2c_client*,struct pmbus_driver_info*) ;int pages; } ;
struct pmbus_data {int has_status_word; TYPE_1__* info; int read_status; } ;
struct device {int dummy; } ;
struct i2c_client {int flags; struct device dev; } ;
struct TYPE_2__ {scalar_t__ pages; } ;


 int ENODEV ;
 int I2C_CLIENT_PEC ;
 int PB_CAPABILITY_ERROR_CHECK ;
 int PMBUS_CAPABILITY ;
 int PMBUS_PAGES ;
 int PMBUS_STATUS_BYTE ;
 int PMBUS_STATUS_WORD ;
 int dev_err (struct device*,char*,...) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int pmbus_clear_fault_page (struct i2c_client*,int) ;
 int pmbus_clear_faults (struct i2c_client*) ;
 int pmbus_identify_common (struct i2c_client*,struct pmbus_data*,int) ;
 int pmbus_read_status_byte ;
 int pmbus_read_status_word ;
 int stub1 (struct i2c_client*,struct pmbus_driver_info*) ;

__attribute__((used)) static int pmbus_init_common(struct i2c_client *client, struct pmbus_data *data,
        struct pmbus_driver_info *info)
{
 struct device *dev = &client->dev;
 int page, ret;






 data->read_status = pmbus_read_status_word;
 ret = i2c_smbus_read_word_data(client, PMBUS_STATUS_WORD);
 if (ret < 0 || ret == 0xffff) {
  data->read_status = pmbus_read_status_byte;
  ret = i2c_smbus_read_byte_data(client, PMBUS_STATUS_BYTE);
  if (ret < 0 || ret == 0xff) {
   dev_err(dev, "PMBus status register not found\n");
   return -ENODEV;
  }
 } else {
  data->has_status_word = 1;
 }


 ret = i2c_smbus_read_byte_data(client, PMBUS_CAPABILITY);
 if (ret >= 0 && (ret & PB_CAPABILITY_ERROR_CHECK))
  client->flags |= I2C_CLIENT_PEC;

 if (data->info->pages)
  pmbus_clear_faults(client);
 else
  pmbus_clear_fault_page(client, -1);

 if (info->identify) {
  ret = (*info->identify)(client, info);
  if (ret < 0) {
   dev_err(dev, "Chip identification failed\n");
   return ret;
  }
 }

 if (info->pages <= 0 || info->pages > PMBUS_PAGES) {
  dev_err(dev, "Bad number of PMBus pages: %d\n", info->pages);
  return -ENODEV;
 }

 for (page = 0; page < info->pages; page++) {
  ret = pmbus_identify_common(client, data, page);
  if (ret < 0) {
   dev_err(dev, "Failed to identify chip capabilities\n");
   return ret;
  }
 }
 return 0;
}
