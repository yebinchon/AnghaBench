
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icn8505_data {int firmware_name; TYPE_1__* client; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int MAX_FW_UPLOAD_TRIES ;
 int dev_err (struct device*,char*,int,...) ;
 int icn8505_read_reg_silent (struct icn8505_data*,int) ;
 int icn8505_try_fw_upload (struct icn8505_data*,struct firmware const*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,struct device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int icn8505_upload_fw(struct icn8505_data *icn8505)
{
 struct device *dev = &icn8505->client->dev;
 const struct firmware *fw;
 int i, error;






 error = request_firmware(&fw, icn8505->firmware_name, dev);
 if (error) {
  dev_err(dev, "Firmware request error %d\n", error);
  return error;
 }


 if (icn8505_read_reg_silent(icn8505, 0x000a) == 0x85)
  goto success;

 for (i = 1; i <= MAX_FW_UPLOAD_TRIES; i++) {
  error = icn8505_try_fw_upload(icn8505, fw);
  if (!error)
   goto success;

  dev_err(dev, "Failed to upload firmware: %d (attempt %d/%d)\n",
   error, i, MAX_FW_UPLOAD_TRIES);
  usleep_range(2000, 5000);
 }

success:
 release_firmware(fw);
 return error;
}
