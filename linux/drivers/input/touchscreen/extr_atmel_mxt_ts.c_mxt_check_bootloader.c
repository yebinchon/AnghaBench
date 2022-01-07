
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct mxt_data {int bl_completion; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;

 unsigned int MXT_BOOT_STATUS_MASK ;
 unsigned int MXT_FRAME_CRC_CHECK ;
 unsigned int MXT_FRAME_CRC_FAIL ;

 int MXT_FW_CHG_TIMEOUT ;


 int dev_err (struct device*,char*,...) ;
 int mxt_bootloader_read (struct mxt_data*,unsigned int*,int) ;
 unsigned int mxt_get_bootloader_version (struct mxt_data*,unsigned int) ;
 int mxt_wait_for_completion (struct mxt_data*,int *,int ) ;

__attribute__((used)) static int mxt_check_bootloader(struct mxt_data *data, unsigned int state,
    bool wait)
{
 struct device *dev = &data->client->dev;
 u8 val;
 int ret;

recheck:
 if (wait) {






  ret = mxt_wait_for_completion(data, &data->bl_completion,
           MXT_FW_CHG_TIMEOUT);
  if (ret) {






   dev_err(dev, "Update wait error %d\n", ret);
   return ret;
  }
 }

 ret = mxt_bootloader_read(data, &val, 1);
 if (ret)
  return ret;

 if (state == 129)
  val = mxt_get_bootloader_version(data, val);

 switch (state) {
 case 129:
 case 128:
 case 131:
  val &= ~MXT_BOOT_STATUS_MASK;
  break;
 case 130:
  if (val == MXT_FRAME_CRC_CHECK) {
   goto recheck;
  } else if (val == MXT_FRAME_CRC_FAIL) {
   dev_err(dev, "Bootloader CRC fail\n");
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 if (val != state) {
  dev_err(dev, "Invalid bootloader state %02X != %02X\n",
   val, state);
  return -EINVAL;
 }

 return 0;
}
