
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mms114_data {int type; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int MMS114_TSP_REV ;
 int MMS152_COMPAT_GROUP ;
 int MMS152_FW_REV ;


 int __mms114_read_reg (struct mms114_data*,int ,int,int *) ;
 int dev_info (struct device*,char*,int ,int ,int ,...) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;

__attribute__((used)) static int mms114_get_version(struct mms114_data *data)
{
 struct device *dev = &data->client->dev;
 u8 buf[6];
 int group;
 int error;

 switch (data->type) {
 case 128:
  error = __mms114_read_reg(data, MMS152_FW_REV, 3, buf);
  if (error)
   return error;

  group = i2c_smbus_read_byte_data(data->client,
        MMS152_COMPAT_GROUP);
  if (group < 0)
   return group;

  dev_info(dev, "TSP FW Rev: bootloader 0x%x / core 0x%x / config 0x%x, Compat group: %c\n",
    buf[0], buf[1], buf[2], group);
  break;

 case 129:
  error = __mms114_read_reg(data, MMS114_TSP_REV, 6, buf);
  if (error)
   return error;

  dev_info(dev, "TSP Rev: 0x%x, HW Rev: 0x%x, Firmware Ver: 0x%x\n",
    buf[0], buf[1], buf[3]);
  break;
 }

 return 0;
}
