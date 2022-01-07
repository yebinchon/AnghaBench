
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mxt_data {TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int MXT_APP_CRC_FAIL ;
 int MXT_BOOT_STATUS_MASK ;
 int dev_err (struct device*,char*,int,char*) ;
 int mxt_bootloader_read (struct mxt_data*,int*,int) ;
 int mxt_lookup_bootloader_address (struct mxt_data*,int) ;

__attribute__((used)) static int mxt_probe_bootloader(struct mxt_data *data, bool alt_address)
{
 struct device *dev = &data->client->dev;
 int error;
 u8 val;
 bool crc_failure;

 error = mxt_lookup_bootloader_address(data, alt_address);
 if (error)
  return error;

 error = mxt_bootloader_read(data, &val, 1);
 if (error)
  return error;


 crc_failure = (val & ~MXT_BOOT_STATUS_MASK) == MXT_APP_CRC_FAIL;

 dev_err(dev, "Detected bootloader, status:%02X%s\n",
   val, crc_failure ? ", APP_CRC_FAIL" : "");

 return 0;
}
